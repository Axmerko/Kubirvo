// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_payment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicensePaymentDTO extends LicensePaymentDTO {
  @override
  final BuiltList<LicensePaymentItemDTO> orderItems;
  @override
  final bool companyPurchase;
  @override
  final int? id;
  @override
  final String? orderNumber;
  @override
  final Currency? currency;
  @override
  final String? lang;
  @override
  final PaymentInstrument? paymentInstrument;
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
  final DateTime? orderedAt;
  @override
  final DateTime? paidAt;
  @override
  final String? customerName;
  @override
  final String? customerEmail;

  factory _$LicensePaymentDTO(
          [void Function(LicensePaymentDTOBuilder)? updates]) =>
      (LicensePaymentDTOBuilder()..update(updates))._build();

  _$LicensePaymentDTO._(
      {required this.orderItems,
      required this.companyPurchase,
      this.id,
      this.orderNumber,
      this.currency,
      this.lang,
      this.paymentInstrument,
      this.companyName,
      this.companyCity,
      this.companyStreetAndNumber,
      this.companyZipCode,
      this.companyCountry,
      this.vatNum,
      this.taxId,
      this.orderedAt,
      this.paidAt,
      this.customerName,
      this.customerEmail})
      : super._();
  @override
  LicensePaymentDTO rebuild(void Function(LicensePaymentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicensePaymentDTOBuilder toBuilder() =>
      LicensePaymentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicensePaymentDTO &&
        orderItems == other.orderItems &&
        companyPurchase == other.companyPurchase &&
        id == other.id &&
        orderNumber == other.orderNumber &&
        currency == other.currency &&
        lang == other.lang &&
        paymentInstrument == other.paymentInstrument &&
        companyName == other.companyName &&
        companyCity == other.companyCity &&
        companyStreetAndNumber == other.companyStreetAndNumber &&
        companyZipCode == other.companyZipCode &&
        companyCountry == other.companyCountry &&
        vatNum == other.vatNum &&
        taxId == other.taxId &&
        orderedAt == other.orderedAt &&
        paidAt == other.paidAt &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderItems.hashCode);
    _$hash = $jc(_$hash, companyPurchase.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, paymentInstrument.hashCode);
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, companyCity.hashCode);
    _$hash = $jc(_$hash, companyStreetAndNumber.hashCode);
    _$hash = $jc(_$hash, companyZipCode.hashCode);
    _$hash = $jc(_$hash, companyCountry.hashCode);
    _$hash = $jc(_$hash, vatNum.hashCode);
    _$hash = $jc(_$hash, taxId.hashCode);
    _$hash = $jc(_$hash, orderedAt.hashCode);
    _$hash = $jc(_$hash, paidAt.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicensePaymentDTO')
          ..add('orderItems', orderItems)
          ..add('companyPurchase', companyPurchase)
          ..add('id', id)
          ..add('orderNumber', orderNumber)
          ..add('currency', currency)
          ..add('lang', lang)
          ..add('paymentInstrument', paymentInstrument)
          ..add('companyName', companyName)
          ..add('companyCity', companyCity)
          ..add('companyStreetAndNumber', companyStreetAndNumber)
          ..add('companyZipCode', companyZipCode)
          ..add('companyCountry', companyCountry)
          ..add('vatNum', vatNum)
          ..add('taxId', taxId)
          ..add('orderedAt', orderedAt)
          ..add('paidAt', paidAt)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail))
        .toString();
  }
}

class LicensePaymentDTOBuilder
    implements Builder<LicensePaymentDTO, LicensePaymentDTOBuilder> {
  _$LicensePaymentDTO? _$v;

  ListBuilder<LicensePaymentItemDTO>? _orderItems;
  ListBuilder<LicensePaymentItemDTO> get orderItems =>
      _$this._orderItems ??= ListBuilder<LicensePaymentItemDTO>();
  set orderItems(ListBuilder<LicensePaymentItemDTO>? orderItems) =>
      _$this._orderItems = orderItems;

  bool? _companyPurchase;
  bool? get companyPurchase => _$this._companyPurchase;
  set companyPurchase(bool? companyPurchase) =>
      _$this._companyPurchase = companyPurchase;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(String? orderNumber) => _$this._orderNumber = orderNumber;

  Currency? _currency;
  Currency? get currency => _$this._currency;
  set currency(Currency? currency) => _$this._currency = currency;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PaymentInstrument? _paymentInstrument;
  PaymentInstrument? get paymentInstrument => _$this._paymentInstrument;
  set paymentInstrument(PaymentInstrument? paymentInstrument) =>
      _$this._paymentInstrument = paymentInstrument;

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

  DateTime? _orderedAt;
  DateTime? get orderedAt => _$this._orderedAt;
  set orderedAt(DateTime? orderedAt) => _$this._orderedAt = orderedAt;

  DateTime? _paidAt;
  DateTime? get paidAt => _$this._paidAt;
  set paidAt(DateTime? paidAt) => _$this._paidAt = paidAt;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  LicensePaymentDTOBuilder() {
    LicensePaymentDTO._defaults(this);
  }

  LicensePaymentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderItems = $v.orderItems.toBuilder();
      _companyPurchase = $v.companyPurchase;
      _id = $v.id;
      _orderNumber = $v.orderNumber;
      _currency = $v.currency;
      _lang = $v.lang;
      _paymentInstrument = $v.paymentInstrument;
      _companyName = $v.companyName;
      _companyCity = $v.companyCity;
      _companyStreetAndNumber = $v.companyStreetAndNumber;
      _companyZipCode = $v.companyZipCode;
      _companyCountry = $v.companyCountry;
      _vatNum = $v.vatNum;
      _taxId = $v.taxId;
      _orderedAt = $v.orderedAt;
      _paidAt = $v.paidAt;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicensePaymentDTO other) {
    _$v = other as _$LicensePaymentDTO;
  }

  @override
  void update(void Function(LicensePaymentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicensePaymentDTO build() => _build();

  _$LicensePaymentDTO _build() {
    _$LicensePaymentDTO _$result;
    try {
      _$result = _$v ??
          _$LicensePaymentDTO._(
            orderItems: orderItems.build(),
            companyPurchase: BuiltValueNullFieldError.checkNotNull(
                companyPurchase, r'LicensePaymentDTO', 'companyPurchase'),
            id: id,
            orderNumber: orderNumber,
            currency: currency,
            lang: lang,
            paymentInstrument: paymentInstrument,
            companyName: companyName,
            companyCity: companyCity,
            companyStreetAndNumber: companyStreetAndNumber,
            companyZipCode: companyZipCode,
            companyCountry: companyCountry,
            vatNum: vatNum,
            taxId: taxId,
            orderedAt: orderedAt,
            paidAt: paidAt,
            customerName: customerName,
            customerEmail: customerEmail,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderItems';
        orderItems.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LicensePaymentDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
