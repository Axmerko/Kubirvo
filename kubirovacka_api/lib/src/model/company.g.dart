// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Company extends Company {
  @override
  final String name;
  @override
  final String? id;
  @override
  final String? city;
  @override
  final String? streetAndNumber;
  @override
  final String? zipCode;
  @override
  final String? country;
  @override
  final String? groupId;
  @override
  final Group? group;
  @override
  final String? vatNum;
  @override
  final String? taxId;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (CompanyBuilder()..update(updates))._build();

  _$Company._(
      {required this.name,
      this.id,
      this.city,
      this.streetAndNumber,
      this.zipCode,
      this.country,
      this.groupId,
      this.group,
      this.vatNum,
      this.taxId})
      : super._();
  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        name == other.name &&
        id == other.id &&
        city == other.city &&
        streetAndNumber == other.streetAndNumber &&
        zipCode == other.zipCode &&
        country == other.country &&
        groupId == other.groupId &&
        group == other.group &&
        vatNum == other.vatNum &&
        taxId == other.taxId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, streetAndNumber.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, vatNum.hashCode);
    _$hash = $jc(_$hash, taxId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Company')
          ..add('name', name)
          ..add('id', id)
          ..add('city', city)
          ..add('streetAndNumber', streetAndNumber)
          ..add('zipCode', zipCode)
          ..add('country', country)
          ..add('groupId', groupId)
          ..add('group', group)
          ..add('vatNum', vatNum)
          ..add('taxId', taxId))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _streetAndNumber;
  String? get streetAndNumber => _$this._streetAndNumber;
  set streetAndNumber(String? streetAndNumber) =>
      _$this._streetAndNumber = streetAndNumber;

  String? _zipCode;
  String? get zipCode => _$this._zipCode;
  set zipCode(String? zipCode) => _$this._zipCode = zipCode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GroupBuilder? _group;
  GroupBuilder get group => _$this._group ??= GroupBuilder();
  set group(GroupBuilder? group) => _$this._group = group;

  String? _vatNum;
  String? get vatNum => _$this._vatNum;
  set vatNum(String? vatNum) => _$this._vatNum = vatNum;

  String? _taxId;
  String? get taxId => _$this._taxId;
  set taxId(String? taxId) => _$this._taxId = taxId;

  CompanyBuilder() {
    Company._defaults(this);
  }

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _city = $v.city;
      _streetAndNumber = $v.streetAndNumber;
      _zipCode = $v.zipCode;
      _country = $v.country;
      _groupId = $v.groupId;
      _group = $v.group?.toBuilder();
      _vatNum = $v.vatNum;
      _taxId = $v.taxId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Company build() => _build();

  _$Company _build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          _$Company._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Company', 'name'),
            id: id,
            city: city,
            streetAndNumber: streetAndNumber,
            zipCode: zipCode,
            country: country,
            groupId: groupId,
            group: _group?.build(),
            vatNum: vatNum,
            taxId: taxId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
