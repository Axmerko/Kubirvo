import 'package:equatable/equatable.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:kubirovacka_one/components/premium_dialog/subscription_purchase_form_data.dart';

abstract class SubscriptionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SubscriptionInitEvent extends SubscriptionEvent {}

class SubscriptionPurchaseUpdatedEvent extends SubscriptionEvent {
  final List<PurchaseDetails> purchaseDetailsList;

  SubscriptionPurchaseUpdatedEvent(this.purchaseDetailsList);

  @override
  List<Object> get props => [purchaseDetailsList];
}

class SubscriptionPurchasePremiumEvent extends SubscriptionEvent {
  final String productId;

  SubscriptionPurchasePremiumEvent(this.productId);

  @override
  List<Object> get props => [productId];
}

class SubscriptionUpdateFormDataEvent extends SubscriptionEvent {
  final SubscriptionPurchaseFormData formData;

  SubscriptionUpdateFormDataEvent(this.formData);

  @override
  List<Object> get props => [formData];
}
