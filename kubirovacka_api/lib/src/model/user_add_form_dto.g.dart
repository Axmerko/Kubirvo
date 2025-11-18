// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_add_form_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAddFormDTO extends UserAddFormDTO {
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String locale;
  @override
  final String roleId;
  @override
  final String? firebaseToken;

  factory _$UserAddFormDTO([void Function(UserAddFormDTOBuilder)? updates]) =>
      (UserAddFormDTOBuilder()..update(updates))._build();

  _$UserAddFormDTO._(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.locale,
      required this.roleId,
      this.firebaseToken})
      : super._();
  @override
  UserAddFormDTO rebuild(void Function(UserAddFormDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAddFormDTOBuilder toBuilder() => UserAddFormDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAddFormDTO &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        locale == other.locale &&
        roleId == other.roleId &&
        firebaseToken == other.firebaseToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, firebaseToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAddFormDTO')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('locale', locale)
          ..add('roleId', roleId)
          ..add('firebaseToken', firebaseToken))
        .toString();
  }
}

class UserAddFormDTOBuilder
    implements Builder<UserAddFormDTO, UserAddFormDTOBuilder> {
  _$UserAddFormDTO? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  String? _firebaseToken;
  String? get firebaseToken => _$this._firebaseToken;
  set firebaseToken(String? firebaseToken) =>
      _$this._firebaseToken = firebaseToken;

  UserAddFormDTOBuilder() {
    UserAddFormDTO._defaults(this);
  }

  UserAddFormDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _locale = $v.locale;
      _roleId = $v.roleId;
      _firebaseToken = $v.firebaseToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAddFormDTO other) {
    _$v = other as _$UserAddFormDTO;
  }

  @override
  void update(void Function(UserAddFormDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAddFormDTO build() => _build();

  _$UserAddFormDTO _build() {
    final _$result = _$v ??
        _$UserAddFormDTO._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserAddFormDTO', 'email'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'UserAddFormDTO', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'UserAddFormDTO', 'lastName'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserAddFormDTO', 'password'),
          locale: BuiltValueNullFieldError.checkNotNull(
              locale, r'UserAddFormDTO', 'locale'),
          roleId: BuiltValueNullFieldError.checkNotNull(
              roleId, r'UserAddFormDTO', 'roleId'),
          firebaseToken: firebaseToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
