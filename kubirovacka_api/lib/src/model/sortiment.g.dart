// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortiment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Sortiment extends Sortiment {
  @override
  final String? id;
  @override
  final String? ownerGroupGuid;
  @override
  final String? ownerUserGuid;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final Group? ownerGroup;
  @override
  final User? ownerUser;

  factory _$Sortiment([void Function(SortimentBuilder)? updates]) =>
      (SortimentBuilder()..update(updates))._build();

  _$Sortiment._(
      {this.id,
      this.ownerGroupGuid,
      this.ownerUserGuid,
      this.code,
      this.name,
      this.ownerGroup,
      this.ownerUser})
      : super._();
  @override
  Sortiment rebuild(void Function(SortimentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortimentBuilder toBuilder() => SortimentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sortiment &&
        id == other.id &&
        ownerGroupGuid == other.ownerGroupGuid &&
        ownerUserGuid == other.ownerUserGuid &&
        code == other.code &&
        name == other.name &&
        ownerGroup == other.ownerGroup &&
        ownerUser == other.ownerUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ownerGroupGuid.hashCode);
    _$hash = $jc(_$hash, ownerUserGuid.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, ownerUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sortiment')
          ..add('id', id)
          ..add('ownerGroupGuid', ownerGroupGuid)
          ..add('ownerUserGuid', ownerUserGuid)
          ..add('code', code)
          ..add('name', name)
          ..add('ownerGroup', ownerGroup)
          ..add('ownerUser', ownerUser))
        .toString();
  }
}

class SortimentBuilder implements Builder<Sortiment, SortimentBuilder> {
  _$Sortiment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ownerGroupGuid;
  String? get ownerGroupGuid => _$this._ownerGroupGuid;
  set ownerGroupGuid(String? ownerGroupGuid) =>
      _$this._ownerGroupGuid = ownerGroupGuid;

  String? _ownerUserGuid;
  String? get ownerUserGuid => _$this._ownerUserGuid;
  set ownerUserGuid(String? ownerUserGuid) =>
      _$this._ownerUserGuid = ownerUserGuid;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  UserBuilder? _ownerUser;
  UserBuilder get ownerUser => _$this._ownerUser ??= UserBuilder();
  set ownerUser(UserBuilder? ownerUser) => _$this._ownerUser = ownerUser;

  SortimentBuilder() {
    Sortiment._defaults(this);
  }

  SortimentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ownerGroupGuid = $v.ownerGroupGuid;
      _ownerUserGuid = $v.ownerUserGuid;
      _code = $v.code;
      _name = $v.name;
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _ownerUser = $v.ownerUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sortiment other) {
    _$v = other as _$Sortiment;
  }

  @override
  void update(void Function(SortimentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sortiment build() => _build();

  _$Sortiment _build() {
    _$Sortiment _$result;
    try {
      _$result = _$v ??
          _$Sortiment._(
            id: id,
            ownerGroupGuid: ownerGroupGuid,
            ownerUserGuid: ownerUserGuid,
            code: code,
            name: name,
            ownerGroup: _ownerGroup?.build(),
            ownerUser: _ownerUser?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();
        _$failedField = 'ownerUser';
        _ownerUser?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Sortiment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
