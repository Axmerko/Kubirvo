// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_payment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicensePayment extends LicensePayment {
  @override
  final int id;
  @override
  final String orderNumber;
  @override
  final String customerId;
  @override
  final bool companyPurchase;
  @override
  final LicensePaymentProvider provider;
  @override
  final DateTime orderedAt;
  @override
  final Currency currency;
  @override
  final SessionState state;
  @override
  final User? customer;
  @override
  final String? companyName;
  @override
  final String? companyCity;
  @override
  final String? companyStreetAndNumber;
  @override
  final String? companyZipCode;
  @override
  final String? companyCountry;
  @override
  final String? vatNum;
  @override
  final String? taxId;
  @override
  final String? purchaseId;
  @override
  final DateTime? paidAt;
  @override
  final BuiltList<LicensePaymentItem>? licensePaymentItems;
  @override
  final bool? invoiceGenerated;
  @override
  final bool? invoiceSent;

  factory _$LicensePayment([void Function(LicensePaymentBuilder)? updates]) =>
      (LicensePaymentBuilder()..update(updates))._build();

  _$LicensePayment._(
      {required this.id,
      required this.orderNumber,
      required this.customerId,
      required this.companyPurchase,
      required this.provider,
      required this.orderedAt,
      required this.currency,
      required this.state,
      this.customer,
      this.companyName,
      this.companyCity,
      this.companyStreetAndNumber,
      this.companyZipCode,
      this.companyCountry,
      this.vatNum,
      this.taxId,
      this.purchaseId,
      this.paidAt,
      this.licensePaymentItems,
      this.invoiceGenerated,
      this.invoiceSent})
      : super._();
  @override
  LicensePayment rebuild(void Function(LicensePaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicensePaymentBuilder toBuilder() => LicensePaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicensePayment &&
        id == other.id &&
        orderNumber == other.orderNumber &&
        customerId == other.customerId &&
        companyPurchase == other.companyPurchase &&
        provider == other.provider &&
        orderedAt == other.orderedAt &&
        currency == other.currency &&
        state == other.state &&
        customer == other.customer &&
        companyName == other.companyName &&
        companyCity == other.companyCity &&
        companyStreetAndNumber == other.companyStreetAndNumber &&
        companyZipCode == other.companyZipCode &&
        companyCountry == other.companyCountry &&
        vatNum == other.vatNum &&
        taxId == other.taxId &&
        purchaseId == other.purchaseId &&
        paidAt == other.paidAt &&
        licensePaymentItems == other.licensePaymentItems &&
        invoiceGenerated == other.invoiceGenerated &&
        invoiceSent == other.invoiceSent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, companyPurchase.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, orderedAt.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, companyCity.hashCode);
    _$hash = $jc(_$hash, companyStreetAndNumber.hashCode);
    _$hash = $jc(_$hash, companyZipCode.hashCode);
    _$hash = $jc(_$hash, companyCountry.hashCode);
    _$hash = $jc(_$hash, vatNum.hashCode);
    _$hash = $jc(_$hash, taxId.hashCode);
    _$hash = $jc(_$hash, purchaseId.hashCode);
    _$hash = $jc(_$hash, paidAt.hashCode);
    _$hash = $jc(_$hash, licensePaymentItems.hashCode);
    _$hash = $jc(_$hash, invoiceGenerated.hashCode);
    _$hash = $jc(_$hash, invoiceSent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicensePayment')
          ..add('id', id)
          ..add('orderNumber', orderNumber)
          ..add('customerId', customerId)
          ..add('companyPurchase', companyPurchase)
          ..add('provider', provider)
          ..add('orderedAt', orderedAt)
          ..add('currency', currency)
          ..add('state', state)
          ..add('customer', customer)
          ..add('companyName', companyName)
          ..add('companyCity', companyCity)
          ..add('companyStreetAndNumber', companyStreetAndNumber)
          ..add('companyZipCode', companyZipCode)
          ..add('companyCountry', companyCountry)
          ..add('vatNum', vatNum)
          ..add('taxId', taxId)
          ..add('purchaseId', purchaseId)
          ..add('paidAt', paidAt)
          ..add('licensePaymentItems', licensePaymentItems)
          ..add('invoiceGenerated', invoiceGenerated)
          ..add('invoiceSent', invoiceSent))
        .toString();
  }
}

class LicensePaymentBuilder
    implements Builder<LicensePayment, LicensePaymentBuilder> {
  _$LicensePayment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(String? orderNumber) => _$this._orderNumber = orderNumber;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  bool? _companyPurchase;
  bool? get companyPurchase => _$this._companyPurchase;
  set companyPurchase(bool? companyPurchase) =>
      _$this._companyPurchase = companyPurchase;

  LicensePaymentProvider? _provider;
  LicensePaymentProvider? get provider => _$this._provider;
  set provider(LicensePaymentProvider? provider) => _$this._provider = provider;

  DateTime? _orderedAt;
  DateTime? get orderedAt => _$this._orderedAt;
  set orderedAt(DateTime? orderedAt) => _$this._orderedAt = orderedAt;

  Currency? _currency;
  Currency? get currency => _$this._currency;
  set currency(Currency? currency) => _$this._currency = currency;

  SessionState? _state;
  SessionState? get state => _$this._state;
  set state(SessionState? state) => _$this._state = state;

  UserBuilder? _customer;
  UserBuilder get customer => _$this._customer ??= UserBuilder();
  set customer(UserBuilder? customer) => _$this._customer = customer;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyCity;
  String? get companyCity => _$this._companyCity;
  set companyCity(String? companyCity) => _$this._companyCity = companyCity;

  String? _companyStreetAndNumber;
  String? get companyStreetAndNumber => _$this._companyStreetAndNumber;
  set companyStreetAndNumber(String? companyStreetAndNumber) =>
      _$this._companyStreetAndNumber = companyStreetAndNumber;

  String? _companyZipCode;
  String? get companyZipCode => _$this._companyZipCode;
  set companyZipCode(String? companyZipCode) =>
      _$this._companyZipCode = companyZipCode;

  String? _companyCountry;
  String? get companyCountry => _$this._companyCountry;
  set companyCountry(String? companyCountry) =>
      _$this._companyCountry = companyCountry;

  String? _vatNum;
  String? get vatNum => _$this._vatNum;
  set vatNum(String? vatNum) => _$this._vatNum = vatNum;

  String? _taxId;
  String? get taxId => _$this._taxId;
  set taxId(String? taxId) => _$this._taxId = taxId;

  String? _purchaseId;
  String? get purchaseId => _$this._purchaseId;
  set purchaseId(String? purchaseId) => _$this._purchaseId = purchaseId;

  DateTime? _paidAt;
  DateTime? get paidAt => _$this._paidAt;
  set paidAt(DateTime? paidAt) => _$this._paidAt = paidAt;

  ListBuilder<LicensePaymentItem>? _licensePaymentItems;
  ListBuilder<LicensePaymentItem> get licensePaymentItems =>
      _$this._licensePaymentItems ??= ListBuilder<LicensePaymentItem>();
  set licensePaymentItems(
          ListBuilder<LicensePaymentItem>? licensePaymentItems) =>
      _$this._licensePaymentItems = licensePaymentItems;

  bool? _invoiceGenerated;
  bool? get invoiceGenerated => _$this._invoiceGenerated;
  set invoiceGenerated(bool? invoiceGenerated) =>
      _$this._invoiceGenerated = invoiceGenerated;

  bool? _invoiceSent;
  bool? get invoiceSent => _$this._invoiceSent;
  set invoiceSent(bool? invoiceSent) => _$this._invoiceSent = invoiceSent;

  LicensePaymentBuilder() {
    LicensePayment._defaults(this);
  }

  LicensePaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderNumber = $v.orderNumber;
      _customerId = $v.customerId;
      _companyPurchase = $v.companyPurchase;
      _provider = $v.provider;
      _orderedAt = $v.orderedAt;
      _currency = $v.currency;
      _state = $v.state;
      _customer = $v.customer?.toBuilder();
      _companyName = $v.companyName;
      _companyCity = $v.companyCity;
      _companyStreetAndNumber = $v.companyStreetAndNumber;
      _companyZipCode = $v.companyZipCode;
      _companyCountry = $v.companyCountry;
      _vatNum = $v.vatNum;
      _taxId = $v.taxId;
      _purchaseId = $v.purchaseId;
      _paidAt = $v.paidAt;
      _licensePaymentItems = $v.licensePaymentItems?.toBuilder();
      _invoiceGenerated = $v.invoiceGenerated;
      _invoiceSent = $v.invoiceSent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicensePayment other) {
    _$v = other as _$LicensePayment;
  }

  @override
  void update(void Function(LicensePaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicensePayment build() => _build();

  _$LicensePayment _build() {
    _$LicensePayment _$result;
    try {
      _$result = _$v ??
          _$LicensePayment._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'LicensePayment', 'id'),
            orderNumber: BuiltValueNullFieldError.checkNotNull(
                orderNumber, r'LicensePayment', 'orderNumber'),
            customerId: BuiltValueNullFieldError.checkNotNull(
                customerId, r'LicensePayment', 'customerId'),
            companyPurchase: BuiltValueNullFieldError.checkNotNull(
                companyPurchase, r'LicensePayment', 'companyPurchase'),
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'LicensePayment', 'provider'),
            orderedAt: BuiltValueNullFieldError.checkNotNull(
                orderedAt, r'LicensePayment', 'orderedAt'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'LicensePayment', 'currency'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'LicensePayment', 'state'),
            customer: _customer?.build(),
            companyName: companyName,
            companyCity: companyCity,
            companyStreetAndNumber: companyStreetAndNumber,
            companyZipCode: companyZipCode,
            companyCountry: companyCountry,
            vatNum: vatNum,
            taxId: taxId,
            purchaseId: purchaseId,
            paidAt: paidAt,
            licensePaymentItems: _licensePaymentItems?.build(),
            invoiceGenerated: invoiceGenerated,
            invoiceSent: invoiceSent,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'licensePaymentItems';
        _licensePaymentItems?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LicensePayment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
