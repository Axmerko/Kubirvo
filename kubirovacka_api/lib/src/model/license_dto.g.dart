// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseDTO extends LicenseDTO {
  @override
  final DateTime expirationDate;
  @override
  final DateTime startDate;
  @override
  final BuiltList<JsonObject?> licenseScopes;
  @override
  final String ownerGroupId;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? ownerName;

  factory _$LicenseDTO([void Function(LicenseDTOBuilder)? updates]) =>
      (LicenseDTOBuilder()..update(updates))._build();

  _$LicenseDTO._(
      {required this.expirationDate,
      required this.startDate,
      required this.licenseScopes,
      required this.ownerGroupId,
      this.id,
      this.userId,
      this.ownerName})
      : super._();
  @override
  LicenseDTO rebuild(void Function(LicenseDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseDTOBuilder toBuilder() => LicenseDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseDTO &&
        expirationDate == other.expirationDate &&
        startDate == other.startDate &&
        licenseScopes == other.licenseScopes &&
        ownerGroupId == other.ownerGroupId &&
        id == other.id &&
        userId == other.userId &&
        ownerName == other.ownerName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, licenseScopes.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenseDTO')
          ..add('expirationDate', expirationDate)
          ..add('startDate', startDate)
          ..add('licenseScopes', licenseScopes)
          ..add('ownerGroupId', ownerGroupId)
          ..add('id', id)
          ..add('userId', userId)
          ..add('ownerName', ownerName))
        .toString();
  }
}

class LicenseDTOBuilder implements Builder<LicenseDTO, LicenseDTOBuilder> {
  _$LicenseDTO? _$v;

  DateTime? _expirationDate;
  DateTime? get expirationDate => _$this._expirationDate;
  set expirationDate(DateTime? expirationDate) =>
      _$this._expirationDate = expirationDate;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  ListBuilder<JsonObject?>? _licenseScopes;
  ListBuilder<JsonObject?> get licenseScopes =>
      _$this._licenseScopes ??= ListBuilder<JsonObject?>();
  set licenseScopes(ListBuilder<JsonObject?>? licenseScopes) =>
      _$this._licenseScopes = licenseScopes;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _ownerName;
  String? get ownerName => _$this._ownerName;
  set ownerName(String? ownerName) => _$this._ownerName = ownerName;

  LicenseDTOBuilder() {
    LicenseDTO._defaults(this);
  }

  LicenseDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expirationDate = $v.expirationDate;
      _startDate = $v.startDate;
      _licenseScopes = $v.licenseScopes.toBuilder();
      _ownerGroupId = $v.ownerGroupId;
      _id = $v.id;
      _userId = $v.userId;
      _ownerName = $v.ownerName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseDTO other) {
    _$v = other as _$LicenseDTO;
  }

  @override
  void update(void Function(LicenseDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseDTO build() => _build();

  _$LicenseDTO _build() {
    _$LicenseDTO _$result;
    try {
      _$result = _$v ??
          _$LicenseDTO._(
            expirationDate: BuiltValueNullFieldError.checkNotNull(
                expirationDate, r'LicenseDTO', 'expirationDate'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'LicenseDTO', 'startDate'),
            licenseScopes: licenseScopes.build(),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'LicenseDTO', 'ownerGroupId'),
            id: id,
            userId: userId,
            ownerName: ownerName,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'licenseScopes';
        licenseScopes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LicenseDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
