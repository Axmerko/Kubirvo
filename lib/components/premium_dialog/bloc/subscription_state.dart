import 'package:equatable/equatable.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../subscription_purchase_form_data.dart';

abstract class SubscriptionState extends Equatable {
  final SubscriptionPurchaseFormData formData;

  @override
  List<Object> get props => [formData];

  const SubscriptionState(this.formData);

  SubscriptionState copyWithFormData(SubscriptionPurchaseFormData formData);
}

class SubscriptionReadyState extends SubscriptionState {
  final List<ProductDetails> products;

  const SubscriptionReadyState(this.products, SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [products, formData];

  @override
  SubscriptionReadyState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionReadyState(products, formData);
  }
}

class SubscriptionPurchaseSuccessState extends SubscriptionState {
  final String productId;

  const SubscriptionPurchaseSuccessState(this.productId, SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [productId, formData];

  @override
  SubscriptionPurchaseSuccessState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionPurchaseSuccessState(productId, formData);
  }
}

// region Loading states
class SubscriptionLoadingState extends SubscriptionState {
  const SubscriptionLoadingState(SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [formData];

  factory SubscriptionLoadingState.initial() => SubscriptionLoadingState(SubscriptionPurchaseFormData.initial());

  @override
  SubscriptionLoadingState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionLoadingState(formData);
  }
}

class SubscriptionPurchasePendingState extends SubscriptionState {
  final String productId;

  const SubscriptionPurchasePendingState(this.productId, SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [productId, formData];

  @override
  SubscriptionPurchasePendingState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionPurchasePendingState(productId, formData);
  }
}
// endregion

// region Error states

class SubscriptionUnavailableState extends SubscriptionState {
  final String error;

  const SubscriptionUnavailableState(this.error, SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [error, formData];

  @override
  SubscriptionUnavailableState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionUnavailableState(error, formData);
  }
}

class SubscriptionPurchaseErrorState extends SubscriptionState {
  final String productId;
  final String error;

  const SubscriptionPurchaseErrorState(this.productId, this.error, SubscriptionPurchaseFormData formData) : super(formData);

  @override
  List<Object> get props => [productId, error, formData];

  @override
  SubscriptionPurchaseErrorState copyWithFormData(SubscriptionPurchaseFormData formData) {
    return SubscriptionPurchaseErrorState(productId, error, formData);
  }
}

// endregion
