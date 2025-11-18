// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_payment_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicensePaymentItem extends LicensePaymentItem {
  @override
  final LicenseProductType licenseProductType;
  @override
  final String? id;
  @override
  final String? licenseId;
  @override
  final License? license;
  @override
  final int? licensePaymentId;
  @override
  final LicensePayment? licensePayment;

  factory _$LicensePaymentItem(
          [void Function(LicensePaymentItemBuilder)? updates]) =>
      (LicensePaymentItemBuilder()..update(updates))._build();

  _$LicensePaymentItem._(
      {required this.licenseProductType,
      this.id,
      this.licenseId,
      this.license,
      this.licensePaymentId,
      this.licensePayment})
      : super._();
  @override
  LicensePaymentItem rebuild(
          void Function(LicensePaymentItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicensePaymentItemBuilder toBuilder() =>
      LicensePaymentItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicensePaymentItem &&
        licenseProductType == other.licenseProductType &&
        id == other.id &&
        licenseId == other.licenseId &&
        license == other.license &&
        licensePaymentId == other.licensePaymentId &&
        licensePayment == other.licensePayment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licenseProductType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, licenseId.hashCode);
    _$hash = $jc(_$hash, license.hashCode);
    _$hash = $jc(_$hash, licensePaymentId.hashCode);
    _$hash = $jc(_$hash, licensePayment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicensePaymentItem')
          ..add('licenseProductType', licenseProductType)
          ..add('id', id)
          ..add('licenseId', licenseId)
          ..add('license', license)
          ..add('licensePaymentId', licensePaymentId)
          ..add('licensePayment', licensePayment))
        .toString();
  }
}

class LicensePaymentItemBuilder
    implements Builder<LicensePaymentItem, LicensePaymentItemBuilder> {
  _$LicensePaymentItem? _$v;

  LicenseProductType? _licenseProductType;
  LicenseProductType? get licenseProductType => _$this._licenseProductType;
  set licenseProductType(LicenseProductType? licenseProductType) =>
      _$this._licenseProductType = licenseProductType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _licenseId;
  String? get licenseId => _$this._licenseId;
  set licenseId(String? licenseId) => _$this._licenseId = licenseId;

  LicenseBuilder? _license;
  LicenseBuilder get license => _$this._license ??= LicenseBuilder();
  set license(LicenseBuilder? license) => _$this._license = license;

  int? _licensePaymentId;
  int? get licensePaymentId => _$this._licensePaymentId;
  set licensePaymentId(int? licensePaymentId) =>
      _$this._licensePaymentId = licensePaymentId;

  LicensePaymentBuilder? _licensePayment;
  LicensePaymentBuilder get licensePayment =>
      _$this._licensePayment ??= LicensePaymentBuilder();
  set licensePayment(LicensePaymentBuilder? licensePayment) =>
      _$this._licensePayment = licensePayment;

  LicensePaymentItemBuilder() {
    LicensePaymentItem._defaults(this);
  }

  LicensePaymentItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseProductType = $v.licenseProductType;
      _id = $v.id;
      _licenseId = $v.licenseId;
      _license = $v.license?.toBuilder();
      _licensePaymentId = $v.licensePaymentId;
      _licensePayment = $v.licensePayment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicensePaymentItem other) {
    _$v = other as _$LicensePaymentItem;
  }

  @override
  void update(void Function(LicensePaymentItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicensePaymentItem build() => _build();

  _$LicensePaymentItem _build() {
    _$LicensePaymentItem _$result;
    try {
      _$result = _$v ??
          _$LicensePaymentItem._(
            licenseProductType: BuiltValueNullFieldError.checkNotNull(
                licenseProductType,
                r'LicensePaymentItem',
                'licenseProductType'),
            id: id,
            licenseId: licenseId,
            license: _license?.build(),
            licensePaymentId: licensePaymentId,
            licensePayment: _licensePayment?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'license';
        _license?.build();

        _$failedField = 'licensePayment';
        _licensePayment?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LicensePaymentItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
