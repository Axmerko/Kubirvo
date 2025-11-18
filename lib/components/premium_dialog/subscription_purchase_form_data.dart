class SubscriptionPurchaseFormData {
  final String selectedProductId;
  final bool isCompanyPurchase;
  final String? companyName;
  final String? companyCountry;
  final String? companyCity;
  final String? companyStreetAndNumber;
  final String? companyZipCode;
  final String? taxId;
  final String? vatNum;

  SubscriptionPurchaseFormData(this.selectedProductId, this.isCompanyPurchase, this.companyName, this.companyCountry, this.companyCity,
      this.companyStreetAndNumber, this.companyZipCode, this.taxId, this.vatNum);

  factory SubscriptionPurchaseFormData.initial() => SubscriptionPurchaseFormData('', false, null, null, null, null, null, null, null);

  factory SubscriptionPurchaseFormData.initialWithSelectedProduct(String selectedProductId) =>
      SubscriptionPurchaseFormData(selectedProductId, false, null, null, null, null, null, null, null);

  SubscriptionPurchaseFormData copyWith(
      {String? selectedProductId,
      bool? isCompanyPurchase,
      String? companyName,
      String? companyCountry,
      String? companyCity,
      String? companyStreetAndNumber,
      String? companyZipCode,
      String? taxId,
      String? vatNum}) {
    return SubscriptionPurchaseFormData(
      selectedProductId ?? this.selectedProductId,
      isCompanyPurchase ?? this.isCompanyPurchase,
      companyName ?? this.companyName,
      companyCountry ?? this.companyCountry,
      companyCity ?? this.companyCity,
      companyStreetAndNumber ?? this.companyStreetAndNumber,
      companyZipCode ?? this.companyZipCode,
      taxId ?? this.taxId,
      vatNum ?? this.vatNum,
    );
  }
}
