// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Role extends Role {
  @override
  final BuiltList<JsonObject?> permissions;
  @override
  final String? roleId;
  @override
  final RoleType? roleType;
  @override
  final bool? isGlobal;
  @override
  final String? name;

  factory _$Role([void Function(RoleBuilder)? updates]) =>
      (RoleBuilder()..update(updates))._build();

  _$Role._(
      {required this.permissions,
      this.roleId,
      this.roleType,
      this.isGlobal,
      this.name})
      : super._();
  @override
  Role rebuild(void Function(RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleBuilder toBuilder() => RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Role &&
        permissions == other.permissions &&
        roleId == other.roleId &&
        roleType == other.roleType &&
        isGlobal == other.isGlobal &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, roleType.hashCode);
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Role')
          ..add('permissions', permissions)
          ..add('roleId', roleId)
          ..add('roleType', roleType)
          ..add('isGlobal', isGlobal)
          ..add('name', name))
        .toString();
  }
}

class RoleBuilder implements Builder<Role, RoleBuilder> {
  _$Role? _$v;

  ListBuilder<JsonObject?>? _permissions;
  ListBuilder<JsonObject?> get permissions =>
      _$this._permissions ??= ListBuilder<JsonObject?>();
  set permissions(ListBuilder<JsonObject?>? permissions) =>
      _$this._permissions = permissions;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  RoleType? _roleType;
  RoleType? get roleType => _$this._roleType;
  set roleType(RoleType? roleType) => _$this._roleType = roleType;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RoleBuilder() {
    Role._defaults(this);
  }

  RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions.toBuilder();
      _roleId = $v.roleId;
      _roleType = $v.roleType;
      _isGlobal = $v.isGlobal;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Role other) {
    _$v = other as _$Role;
  }

  @override
  void update(void Function(RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Role build() => _build();

  _$Role _build() {
    _$Role _$result;
    try {
      _$result = _$v ??
          _$Role._(
            permissions: permissions.build(),
            roleId: roleId,
            roleType: roleType,
            isGlobal: isGlobal,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Role', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
