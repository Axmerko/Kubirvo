import 'dart:async';

import 'dart:io';

import 'package:event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/apis/api_client.dart';
import 'package:kubirovacka_one/components/premium_dialog/subscription_purchase_form_data.dart';
import 'package:kubirovacka_one/events/auth_events.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';



import 'subscription_event.dart';
import 'subscription_state.dart';

final getIt = GetIt.instance;

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final _inAppPurchase = InAppPurchase.instance;
  final _apiClient = getIt.get<ApiClient>();
  final _userPurchasedPremiumEvent = getIt.get<Event<UserPurchasedPremiumEvent>>();
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  final _productIds = <String>{
    'kub_premium_monthly',
    'kub_premium_yearly',
  };

  List<ProductDetails>? _products;

  SubscriptionBloc() : super(SubscriptionLoadingState.initial()) {
    on<SubscriptionInitEvent>(_init);
    on<SubscriptionPurchaseUpdatedEvent>(_handlePurchaseUpdated);
    on<SubscriptionPurchasePremiumEvent>(_purchasePremium);
    on<SubscriptionUpdateFormDataEvent>(_updateFormData);

    final Stream purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen((purchaseDetailsList) {
      add(SubscriptionPurchaseUpdatedEvent(purchaseDetailsList));
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {

    }) as StreamSubscription<List<PurchaseDetails>>;
  }

  Future _init(SubscriptionInitEvent event, Emitter<SubscriptionState> emit) async {
    final bool available = await _inAppPurchase.isAvailable();
    final bool online = await isOnline();
    if (!online) {
      emit(SubscriptionUnavailableState('Nemáte připojení k internetu.', state.formData));
    } else if (!available) {
      emit(SubscriptionUnavailableState(
          'Nákupy nejsou na tomto zařízení podporovány. Kupte si prosím prémiový účet přes webovou stránku.', state.formData));
    } else {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(_productIds);

      if (response.notFoundIDs.isNotEmpty) {

        final missingIds = response.notFoundIDs.join(', ');
        final String debugMessage = 'Nepodařilo se najít žádné předplatné. Zkuste to prosím později.\n\n'
            'DIAGNOSTIKA PRO PODPORU:\n'
            'Požadovaná ID: ${_productIds.join(', ')}\n'
            'Nenalezená ID: $missingIds\n'
            'Status: NOT_FOUND';

        log('IAP Check failed. Status: NOT_FOUND. Missing IDs: $missingIds');


        emit(SubscriptionUnavailableState(debugMessage, state.formData));
      } else {
        _products = response.productDetails;
        _products!.sort((a, b) => a.price.compareTo(b.price));
        emit(SubscriptionReadyState(_products!, SubscriptionPurchaseFormData.initialWithSelectedProduct(_products!.first.id)));
      }
    }
  }

  Future<void> _handlePurchaseUpdated(SubscriptionPurchaseUpdatedEvent event, Emitter<SubscriptionState> emit) async {
    for (final purchaseDetails in event.purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        emit(SubscriptionPurchasePendingState(purchaseDetails.productID, state.formData));
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          emit(SubscriptionPurchaseErrorState(
              purchaseDetails.productID, purchaseDetails.error?.message ?? 'Nastala neznámá chyba. Zkuste to znovu později.', state.formData));
        } else if (purchaseDetails.status == PurchaseStatus.purchased || purchaseDetails.status == PurchaseStatus.restored) {


          LicenseProductType? licenseProductType;
          if (purchaseDetails.productID == 'kub_premium_monthly' || purchaseDetails.productID == 'kub_premium_monthly_ios') {
            licenseProductType = LicenseProductType.kubPrem1Month;
          } else if (purchaseDetails.productID == 'kub_premium_yearly' || purchaseDetails.productID == 'kub_premium_yearly_ios') {
            licenseProductType = LicenseProductType.kubPrem1Year;
          }
          if (licenseProductType == null) continue;

          final formData = state.formData;
          final paymentDto = MobileStoreLicensePaymentDTO((b) => b

            ..purchaseId = purchaseDetails.verificationData.serverVerificationData


            ..orderItems.replace([
              LicensePaymentItemDTO((b) => b
                ..licenseProductType = licenseProductType)
            ])

            ..companyPurchase = formData.isCompanyPurchase
            ..companyName = formData.companyName
            ..companyCity = formData.companyCity
            ..companyStreetAndNumber = formData.companyStreetAndNumber
            ..companyZipCode = formData.companyZipCode
            ..companyCountry = formData.companyCountry
            ..vatNum = formData.vatNum
            ..taxId = formData.taxId);


          try {
            if (Platform.isIOS) {
              await _apiClient.api.getLicensePaymentApi().apiPaymentLicensePaymentAppStorePost(
                  mobileStoreLicensePaymentDTO: paymentDto
              );
            } else {
              await _apiClient.api.getLicensePaymentApi().apiPaymentLicensePaymentGooglePlayPost(
                  mobileStoreLicensePaymentDTO: paymentDto
              );
            }
            _userPurchasedPremiumEvent.broadcast(UserPurchasedPremiumEvent());
            emit(SubscriptionPurchaseSuccessState(purchaseDetails.productID, state.formData));
          } catch (e) {
            log('Error during purchase completion: $e', level: Severity.error);
            emit(SubscriptionPurchaseErrorState(
                purchaseDetails.productID,
                'Nákup se nepodařio dokončit. Kontaktujte prosím podporu na support@kubirovacka.cz.',
                state.formData));
          }
        }

        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future _purchasePremium(SubscriptionPurchasePremiumEvent event, Emitter<SubscriptionState> emit) async {
    final ProductDetails? productDetails = _products?.firstWhere((element) => element.id == event.productId);
    if (productDetails == null) {
      final missingIds = _productIds.join(', ');
      final String debugMessage = 'Nepodařilo se najít žádné předplatné. Zkuste to prosím později.\n\n'
          'DIAGNOSTIKA PRO PODPORU:\n'
          'Požadovaná ID: ${_productIds.join(', ')}\n'
          'Nenalezená ID: $missingIds\n'
          'Status: NOT_FOUND (Chyba při kliknutí na Koupit)';

      emit(SubscriptionUnavailableState(debugMessage, state.formData));
    } else {
      final purchaseParam = PurchaseParam(productDetails: productDetails);
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    }
  }

  final _countryMap = {
    'CZ': 'Česko',
    'SK': 'Slovensko',
  };

  FutureOr<void> _updateFormData(SubscriptionUpdateFormDataEvent event, Emitter<SubscriptionState> emit) {
    var newFormData = event.formData;
    if (newFormData.isCompanyPurchase && (newFormData.companyCountry == null || newFormData.companyCountry!.isEmpty)) {
      newFormData = newFormData.copyWith(companyCountry: _countryMap[WidgetsBinding.instance.platformDispatcher.locale.countryCode] ?? 'Česko');
    }
    emit(state.copyWithFormData(newFormData));
  }
}