// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileDTO extends UserProfileDTO {
  @override
  final String? id;
  @override
  final DateTime? registeredAt;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? locale;
  @override
  final UserGroupStatus? status;
  @override
  final String? homeGroupId;
  @override
  final DateTime? licenseEnd;
  @override
  final String? roleId;
  @override
  final bool? isSubAccount;

  factory _$UserProfileDTO([void Function(UserProfileDTOBuilder)? updates]) =>
      (UserProfileDTOBuilder()..update(updates))._build();

  _$UserProfileDTO._(
      {this.id,
      this.registeredAt,
      this.email,
      this.firstName,
      this.lastName,
      this.locale,
      this.status,
      this.homeGroupId,
      this.licenseEnd,
      this.roleId,
      this.isSubAccount})
      : super._();
  @override
  UserProfileDTO rebuild(void Function(UserProfileDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileDTOBuilder toBuilder() => UserProfileDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileDTO &&
        id == other.id &&
        registeredAt == other.registeredAt &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        locale == other.locale &&
        status == other.status &&
        homeGroupId == other.homeGroupId &&
        licenseEnd == other.licenseEnd &&
        roleId == other.roleId &&
        isSubAccount == other.isSubAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, registeredAt.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, homeGroupId.hashCode);
    _$hash = $jc(_$hash, licenseEnd.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, isSubAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileDTO')
          ..add('id', id)
          ..add('registeredAt', registeredAt)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('locale', locale)
          ..add('status', status)
          ..add('homeGroupId', homeGroupId)
          ..add('licenseEnd', licenseEnd)
          ..add('roleId', roleId)
          ..add('isSubAccount', isSubAccount))
        .toString();
  }
}

class UserProfileDTOBuilder
    implements Builder<UserProfileDTO, UserProfileDTOBuilder> {
  _$UserProfileDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _registeredAt;
  DateTime? get registeredAt => _$this._registeredAt;
  set registeredAt(DateTime? registeredAt) =>
      _$this._registeredAt = registeredAt;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  UserGroupStatus? _status;
  UserGroupStatus? get status => _$this._status;
  set status(UserGroupStatus? status) => _$this._status = status;

  String? _homeGroupId;
  String? get homeGroupId => _$this._homeGroupId;
  set homeGroupId(String? homeGroupId) => _$this._homeGroupId = homeGroupId;

  DateTime? _licenseEnd;
  DateTime? get licenseEnd => _$this._licenseEnd;
  set licenseEnd(DateTime? licenseEnd) => _$this._licenseEnd = licenseEnd;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  bool? _isSubAccount;
  bool? get isSubAccount => _$this._isSubAccount;
  set isSubAccount(bool? isSubAccount) => _$this._isSubAccount = isSubAccount;

  UserProfileDTOBuilder() {
    UserProfileDTO._defaults(this);
  }

  UserProfileDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _registeredAt = $v.registeredAt;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _locale = $v.locale;
      _status = $v.status;
      _homeGroupId = $v.homeGroupId;
      _licenseEnd = $v.licenseEnd;
      _roleId = $v.roleId;
      _isSubAccount = $v.isSubAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileDTO other) {
    _$v = other as _$UserProfileDTO;
  }

  @override
  void update(void Function(UserProfileDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileDTO build() => _build();

  _$UserProfileDTO _build() {
    final _$result = _$v ??
        _$UserProfileDTO._(
          id: id,
          registeredAt: registeredAt,
          email: email,
          firstName: firstName,
          lastName: lastName,
          locale: locale,
          status: status,
          homeGroupId: homeGroupId,
          licenseEnd: licenseEnd,
          roleId: roleId,
          isSubAccount: isSubAccount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
