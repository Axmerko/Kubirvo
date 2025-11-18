// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserGroup extends UserGroup {
  @override
  final String userId;
  @override
  final String groupId;
  @override
  final String roleId;
  @override
  final bool isHomeGroup;
  @override
  final UserGroupStatus status;
  @override
  final bool isSubAccount;
  @override
  final User? user;
  @override
  final Group? group;
  @override
  final Role? role;

  factory _$UserGroup([void Function(UserGroupBuilder)? updates]) =>
      (UserGroupBuilder()..update(updates))._build();

  _$UserGroup._(
      {required this.userId,
      required this.groupId,
      required this.roleId,
      required this.isHomeGroup,
      required this.status,
      required this.isSubAccount,
      this.user,
      this.group,
      this.role})
      : super._();
  @override
  UserGroup rebuild(void Function(UserGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserGroupBuilder toBuilder() => UserGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserGroup &&
        userId == other.userId &&
        groupId == other.groupId &&
        roleId == other.roleId &&
        isHomeGroup == other.isHomeGroup &&
        status == other.status &&
        isSubAccount == other.isSubAccount &&
        user == other.user &&
        group == other.group &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, isHomeGroup.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isSubAccount.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserGroup')
          ..add('userId', userId)
          ..add('groupId', groupId)
          ..add('roleId', roleId)
          ..add('isHomeGroup', isHomeGroup)
          ..add('status', status)
          ..add('isSubAccount', isSubAccount)
          ..add('user', user)
          ..add('group', group)
          ..add('role', role))
        .toString();
  }
}

class UserGroupBuilder implements Builder<UserGroup, UserGroupBuilder> {
  _$UserGroup? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  bool? _isHomeGroup;
  bool? get isHomeGroup => _$this._isHomeGroup;
  set isHomeGroup(bool? isHomeGroup) => _$this._isHomeGroup = isHomeGroup;

  UserGroupStatus? _status;
  UserGroupStatus? get status => _$this._status;
  set status(UserGroupStatus? status) => _$this._status = status;

  bool? _isSubAccount;
  bool? get isSubAccount => _$this._isSubAccount;
  set isSubAccount(bool? isSubAccount) => _$this._isSubAccount = isSubAccount;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  GroupBuilder? _group;
  GroupBuilder get group => _$this._group ??= GroupBuilder();
  set group(GroupBuilder? group) => _$this._group = group;

  RoleBuilder? _role;
  RoleBuilder get role => _$this._role ??= RoleBuilder();
  set role(RoleBuilder? role) => _$this._role = role;

  UserGroupBuilder() {
    UserGroup._defaults(this);
  }

  UserGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _groupId = $v.groupId;
      _roleId = $v.roleId;
      _isHomeGroup = $v.isHomeGroup;
      _status = $v.status;
      _isSubAccount = $v.isSubAccount;
      _user = $v.user?.toBuilder();
      _group = $v.group?.toBuilder();
      _role = $v.role?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserGroup other) {
    _$v = other as _$UserGroup;
  }

  @override
  void update(void Function(UserGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserGroup build() => _build();

  _$UserGroup _build() {
    _$UserGroup _$result;
    try {
      _$result = _$v ??
          _$UserGroup._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'UserGroup', 'userId'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, r'UserGroup', 'groupId'),
            roleId: BuiltValueNullFieldError.checkNotNull(
                roleId, r'UserGroup', 'roleId'),
            isHomeGroup: BuiltValueNullFieldError.checkNotNull(
                isHomeGroup, r'UserGroup', 'isHomeGroup'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UserGroup', 'status'),
            isSubAccount: BuiltValueNullFieldError.checkNotNull(
                isSubAccount, r'UserGroup', 'isSubAccount'),
            user: _user?.build(),
            group: _group?.build(),
            role: _role?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'group';
        _group?.build();
        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
