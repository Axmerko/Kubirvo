// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompanyDTO extends CompanyDTO {
  @override
  final String? id;
  @override
  final String? name;
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
  final GroupBriefDTO? group;
  @override
  final String? vatNum;
  @override
  final String? taxId;

  factory _$CompanyDTO([void Function(CompanyDTOBuilder)? updates]) =>
      (CompanyDTOBuilder()..update(updates))._build();

  _$CompanyDTO._(
      {this.id,
      this.name,
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
  CompanyDTO rebuild(void Function(CompanyDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyDTOBuilder toBuilder() => CompanyDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyDTO &&
        id == other.id &&
        name == other.name &&
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
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
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
    return (newBuiltValueToStringHelper(r'CompanyDTO')
          ..add('id', id)
          ..add('name', name)
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

class CompanyDTOBuilder implements Builder<CompanyDTO, CompanyDTOBuilder> {
  _$CompanyDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  GroupBriefDTOBuilder? _group;
  GroupBriefDTOBuilder get group => _$this._group ??= GroupBriefDTOBuilder();
  set group(GroupBriefDTOBuilder? group) => _$this._group = group;

  String? _vatNum;
  String? get vatNum => _$this._vatNum;
  set vatNum(String? vatNum) => _$this._vatNum = vatNum;

  String? _taxId;
  String? get taxId => _$this._taxId;
  set taxId(String? taxId) => _$this._taxId = taxId;

  CompanyDTOBuilder() {
    CompanyDTO._defaults(this);
  }

  CompanyDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
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
  void replace(CompanyDTO other) {
    _$v = other as _$CompanyDTO;
  }

  @override
  void update(void Function(CompanyDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyDTO build() => _build();

  _$CompanyDTO _build() {
    _$CompanyDTO _$result;
    try {
      _$result = _$v ??
          _$CompanyDTO._(
            id: id,
            name: name,
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
            r'CompanyDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
