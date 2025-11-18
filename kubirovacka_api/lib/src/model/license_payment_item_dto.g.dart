// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_payment_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicensePaymentItemDTO extends LicensePaymentItemDTO {
  @override
  final LicenseProductType licenseProductType;
  @override
  final String? licenseId;

  factory _$LicensePaymentItemDTO(
          [void Function(LicensePaymentItemDTOBuilder)? updates]) =>
      (LicensePaymentItemDTOBuilder()..update(updates))._build();

  _$LicensePaymentItemDTO._({required this.licenseProductType, this.licenseId})
      : super._();
  @override
  LicensePaymentItemDTO rebuild(
          void Function(LicensePaymentItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicensePaymentItemDTOBuilder toBuilder() =>
      LicensePaymentItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicensePaymentItemDTO &&
        licenseProductType == other.licenseProductType &&
        licenseId == other.licenseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licenseProductType.hashCode);
    _$hash = $jc(_$hash, licenseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicensePaymentItemDTO')
          ..add('licenseProductType', licenseProductType)
          ..add('licenseId', licenseId))
        .toString();
  }
}

class LicensePaymentItemDTOBuilder
    implements Builder<LicensePaymentItemDTO, LicensePaymentItemDTOBuilder> {
  _$LicensePaymentItemDTO? _$v;

  LicenseProductType? _licenseProductType;
  LicenseProductType? get licenseProductType => _$this._licenseProductType;
  set licenseProductType(LicenseProductType? licenseProductType) =>
      _$this._licenseProductType = licenseProductType;

  String? _licenseId;
  String? get licenseId => _$this._licenseId;
  set licenseId(String? licenseId) => _$this._licenseId = licenseId;

  LicensePaymentItemDTOBuilder() {
    LicensePaymentItemDTO._defaults(this);
  }

  LicensePaymentItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseProductType = $v.licenseProductType;
      _licenseId = $v.licenseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicensePaymentItemDTO other) {
    _$v = other as _$LicensePaymentItemDTO;
  }

  @override
  void update(void Function(LicensePaymentItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicensePaymentItemDTO build() => _build();

  _$LicensePaymentItemDTO _build() {
    final _$result = _$v ??
        _$LicensePaymentItemDTO._(
          licenseProductType: BuiltValueNullFieldError.checkNotNull(
              licenseProductType,
              r'LicensePaymentItemDTO',
              'licenseProductType'),
          licenseId: licenseId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
