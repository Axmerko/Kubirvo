// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_store_license_payment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileStoreLicensePaymentDTO extends MobileStoreLicensePaymentDTO {
  @override
  final BuiltList<LicensePaymentItemDTO> orderItems;
  @override
  final String purchaseId;
  @override
  final bool? companyPurchase;
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

  factory _$MobileStoreLicensePaymentDTO(
          [void Function(MobileStoreLicensePaymentDTOBuilder)? updates]) =>
      (MobileStoreLicensePaymentDTOBuilder()..update(updates))._build();

  _$MobileStoreLicensePaymentDTO._(
      {required this.orderItems,
      required this.purchaseId,
      this.companyPurchase,
      this.companyName,
      this.companyCity,
      this.companyStreetAndNumber,
      this.companyZipCode,
      this.companyCountry,
      this.vatNum,
      this.taxId})
      : super._();
  @override
  MobileStoreLicensePaymentDTO rebuild(
          void Function(MobileStoreLicensePaymentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileStoreLicensePaymentDTOBuilder toBuilder() =>
      MobileStoreLicensePaymentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileStoreLicensePaymentDTO &&
        orderItems == other.orderItems &&
        purchaseId == other.purchaseId &&
        companyPurchase == other.companyPurchase &&
        companyName == other.companyName &&
        companyCity == other.companyCity &&
        companyStreetAndNumber == other.companyStreetAndNumber &&
        companyZipCode == other.companyZipCode &&
        companyCountry == other.companyCountry &&
        vatNum == other.vatNum &&
        taxId == other.taxId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderItems.hashCode);
    _$hash = $jc(_$hash, purchaseId.hashCode);
    _$hash = $jc(_$hash, companyPurchase.hashCode);
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, companyCity.hashCode);
    _$hash = $jc(_$hash, companyStreetAndNumber.hashCode);
    _$hash = $jc(_$hash, companyZipCode.hashCode);
    _$hash = $jc(_$hash, companyCountry.hashCode);
    _$hash = $jc(_$hash, vatNum.hashCode);
    _$hash = $jc(_$hash, taxId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileStoreLicensePaymentDTO')
          ..add('orderItems', orderItems)
          ..add('purchaseId', purchaseId)
          ..add('companyPurchase', companyPurchase)
          ..add('companyName', companyName)
          ..add('companyCity', companyCity)
          ..add('companyStreetAndNumber', companyStreetAndNumber)
          ..add('companyZipCode', companyZipCode)
          ..add('companyCountry', companyCountry)
          ..add('vatNum', vatNum)
          ..add('taxId', taxId))
        .toString();
  }
}

class MobileStoreLicensePaymentDTOBuilder
    implements
        Builder<MobileStoreLicensePaymentDTO,
            MobileStoreLicensePaymentDTOBuilder> {
  _$MobileStoreLicensePaymentDTO? _$v;

  ListBuilder<LicensePaymentItemDTO>? _orderItems;
  ListBuilder<LicensePaymentItemDTO> get orderItems =>
      _$this._orderItems ??= ListBuilder<LicensePaymentItemDTO>();
  set orderItems(ListBuilder<LicensePaymentItemDTO>? orderItems) =>
      _$this._orderItems = orderItems;

  String? _purchaseId;
  String? get purchaseId => _$this._purchaseId;
  set purchaseId(String? purchaseId) => _$this._purchaseId = purchaseId;

  bool? _companyPurchase;
  bool? get companyPurchase => _$this._companyPurchase;
  set companyPurchase(bool? companyPurchase) =>
      _$this._companyPurchase = companyPurchase;

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

  MobileStoreLicensePaymentDTOBuilder() {
    MobileStoreLicensePaymentDTO._defaults(this);
  }

  MobileStoreLicensePaymentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderItems = $v.orderItems.toBuilder();
      _purchaseId = $v.purchaseId;
      _companyPurchase = $v.companyPurchase;
      _companyName = $v.companyName;
      _companyCity = $v.companyCity;
      _companyStreetAndNumber = $v.companyStreetAndNumber;
      _companyZipCode = $v.companyZipCode;
      _companyCountry = $v.companyCountry;
      _vatNum = $v.vatNum;
      _taxId = $v.taxId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileStoreLicensePaymentDTO other) {
    _$v = other as _$MobileStoreLicensePaymentDTO;
  }

  @override
  void update(void Function(MobileStoreLicensePaymentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileStoreLicensePaymentDTO build() => _build();

  _$MobileStoreLicensePaymentDTO _build() {
    _$MobileStoreLicensePaymentDTO _$result;
    try {
      _$result = _$v ??
          _$MobileStoreLicensePaymentDTO._(
            orderItems: orderItems.build(),
            purchaseId: BuiltValueNullFieldError.checkNotNull(
                purchaseId, r'MobileStoreLicensePaymentDTO', 'purchaseId'),
            companyPurchase: companyPurchase,
            companyName: companyName,
            companyCity: companyCity,
            companyStreetAndNumber: companyStreetAndNumber,
            companyZipCode: companyZipCode,
            companyCountry: companyCountry,
            vatNum: vatNum,
            taxId: taxId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderItems';
        orderItems.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MobileStoreLicensePaymentDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
