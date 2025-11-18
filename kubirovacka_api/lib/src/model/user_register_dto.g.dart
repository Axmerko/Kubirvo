// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRegisterDTO extends UserRegisterDTO {
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
  final String? firebaseToken;

  factory _$UserRegisterDTO([void Function(UserRegisterDTOBuilder)? updates]) =>
      (UserRegisterDTOBuilder()..update(updates))._build();

  _$UserRegisterDTO._(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.locale,
      this.firebaseToken})
      : super._();
  @override
  UserRegisterDTO rebuild(void Function(UserRegisterDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRegisterDTOBuilder toBuilder() => UserRegisterDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRegisterDTO &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        locale == other.locale &&
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
    _$hash = $jc(_$hash, firebaseToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRegisterDTO')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('locale', locale)
          ..add('firebaseToken', firebaseToken))
        .toString();
  }
}

class UserRegisterDTOBuilder
    implements Builder<UserRegisterDTO, UserRegisterDTOBuilder> {
  _$UserRegisterDTO? _$v;

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

  String? _firebaseToken;
  String? get firebaseToken => _$this._firebaseToken;
  set firebaseToken(String? firebaseToken) =>
      _$this._firebaseToken = firebaseToken;

  UserRegisterDTOBuilder() {
    UserRegisterDTO._defaults(this);
  }

  UserRegisterDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _locale = $v.locale;
      _firebaseToken = $v.firebaseToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRegisterDTO other) {
    _$v = other as _$UserRegisterDTO;
  }

  @override
  void update(void Function(UserRegisterDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRegisterDTO build() => _build();

  _$UserRegisterDTO _build() {
    final _$result = _$v ??
        _$UserRegisterDTO._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserRegisterDTO', 'email'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'UserRegisterDTO', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'UserRegisterDTO', 'lastName'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserRegisterDTO', 'password'),
          locale: BuiltValueNullFieldError.checkNotNull(
              locale, r'UserRegisterDTO', 'locale'),
          firebaseToken: firebaseToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
