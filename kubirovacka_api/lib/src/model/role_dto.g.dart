// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleDTO extends RoleDTO {
  @override
  final String? roleId;
  @override
  final RoleType? roleType;
  @override
  final BuiltList<JsonObject?>? permissions;
  @override
  final bool? isGlobal;
  @override
  final String? name;

  factory _$RoleDTO([void Function(RoleDTOBuilder)? updates]) =>
      (RoleDTOBuilder()..update(updates))._build();

  _$RoleDTO._(
      {this.roleId, this.roleType, this.permissions, this.isGlobal, this.name})
      : super._();
  @override
  RoleDTO rebuild(void Function(RoleDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleDTOBuilder toBuilder() => RoleDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleDTO &&
        roleId == other.roleId &&
        roleType == other.roleType &&
        permissions == other.permissions &&
        isGlobal == other.isGlobal &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, roleType.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleDTO')
          ..add('roleId', roleId)
          ..add('roleType', roleType)
          ..add('permissions', permissions)
          ..add('isGlobal', isGlobal)
          ..add('name', name))
        .toString();
  }
}

class RoleDTOBuilder implements Builder<RoleDTO, RoleDTOBuilder> {
  _$RoleDTO? _$v;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  RoleType? _roleType;
  RoleType? get roleType => _$this._roleType;
  set roleType(RoleType? roleType) => _$this._roleType = roleType;

  ListBuilder<JsonObject?>? _permissions;
  ListBuilder<JsonObject?> get permissions =>
      _$this._permissions ??= ListBuilder<JsonObject?>();
  set permissions(ListBuilder<JsonObject?>? permissions) =>
      _$this._permissions = permissions;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RoleDTOBuilder() {
    RoleDTO._defaults(this);
  }

  RoleDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleId = $v.roleId;
      _roleType = $v.roleType;
      _permissions = $v.permissions?.toBuilder();
      _isGlobal = $v.isGlobal;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleDTO other) {
    _$v = other as _$RoleDTO;
  }

  @override
  void update(void Function(RoleDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleDTO build() => _build();

  _$RoleDTO _build() {
    _$RoleDTO _$result;
    try {
      _$result = _$v ??
          _$RoleDTO._(
            roleId: roleId,
            roleType: roleType,
            permissions: _permissions?.build(),
            isGlobal: isGlobal,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RoleDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
