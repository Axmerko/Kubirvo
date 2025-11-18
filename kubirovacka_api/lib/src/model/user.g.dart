// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final DateTime registeredAt;
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
  final bool confirmed;
  @override
  final int jwtVersion;
  @override
  final bool isAdmin;
  @override
  final String? id;
  @override
  final String? passwordResetToken;
  @override
  final String? firebaseToken;
  @override
  final int? iDokladId;
  @override
  final BuiltList<UserGroup>? userGroups;
  @override
  final BuiltList<License>? licensesUsed;
  @override
  final BuiltList<LicensePayment>? licensePayments;
  @override
  final BuiltList<Feedback>? feedbacks;
  @override
  final BuiltList<Sortiment>? sortiments;
  @override
  final BuiltList<DeliveryNote>? deliveryNotes;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {required this.registeredAt,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.locale,
      required this.confirmed,
      required this.jwtVersion,
      required this.isAdmin,
      this.id,
      this.passwordResetToken,
      this.firebaseToken,
      this.iDokladId,
      this.userGroups,
      this.licensesUsed,
      this.licensePayments,
      this.feedbacks,
      this.sortiments,
      this.deliveryNotes})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        registeredAt == other.registeredAt &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        locale == other.locale &&
        confirmed == other.confirmed &&
        jwtVersion == other.jwtVersion &&
        isAdmin == other.isAdmin &&
        id == other.id &&
        passwordResetToken == other.passwordResetToken &&
        firebaseToken == other.firebaseToken &&
        iDokladId == other.iDokladId &&
        userGroups == other.userGroups &&
        licensesUsed == other.licensesUsed &&
        licensePayments == other.licensePayments &&
        feedbacks == other.feedbacks &&
        sortiments == other.sortiments &&
        deliveryNotes == other.deliveryNotes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registeredAt.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, jwtVersion.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, passwordResetToken.hashCode);
    _$hash = $jc(_$hash, firebaseToken.hashCode);
    _$hash = $jc(_$hash, iDokladId.hashCode);
    _$hash = $jc(_$hash, userGroups.hashCode);
    _$hash = $jc(_$hash, licensesUsed.hashCode);
    _$hash = $jc(_$hash, licensePayments.hashCode);
    _$hash = $jc(_$hash, feedbacks.hashCode);
    _$hash = $jc(_$hash, sortiments.hashCode);
    _$hash = $jc(_$hash, deliveryNotes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('registeredAt', registeredAt)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('locale', locale)
          ..add('confirmed', confirmed)
          ..add('jwtVersion', jwtVersion)
          ..add('isAdmin', isAdmin)
          ..add('id', id)
          ..add('passwordResetToken', passwordResetToken)
          ..add('firebaseToken', firebaseToken)
          ..add('iDokladId', iDokladId)
          ..add('userGroups', userGroups)
          ..add('licensesUsed', licensesUsed)
          ..add('licensePayments', licensePayments)
          ..add('feedbacks', feedbacks)
          ..add('sortiments', sortiments)
          ..add('deliveryNotes', deliveryNotes))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  bool? _confirmed;
  bool? get confirmed => _$this._confirmed;
  set confirmed(bool? confirmed) => _$this._confirmed = confirmed;

  int? _jwtVersion;
  int? get jwtVersion => _$this._jwtVersion;
  set jwtVersion(int? jwtVersion) => _$this._jwtVersion = jwtVersion;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _passwordResetToken;
  String? get passwordResetToken => _$this._passwordResetToken;
  set passwordResetToken(String? passwordResetToken) =>
      _$this._passwordResetToken = passwordResetToken;

  String? _firebaseToken;
  String? get firebaseToken => _$this._firebaseToken;
  set firebaseToken(String? firebaseToken) =>
      _$this._firebaseToken = firebaseToken;

  int? _iDokladId;
  int? get iDokladId => _$this._iDokladId;
  set iDokladId(int? iDokladId) => _$this._iDokladId = iDokladId;

  ListBuilder<UserGroup>? _userGroups;
  ListBuilder<UserGroup> get userGroups =>
      _$this._userGroups ??= ListBuilder<UserGroup>();
  set userGroups(ListBuilder<UserGroup>? userGroups) =>
      _$this._userGroups = userGroups;

  ListBuilder<License>? _licensesUsed;
  ListBuilder<License> get licensesUsed =>
      _$this._licensesUsed ??= ListBuilder<License>();
  set licensesUsed(ListBuilder<License>? licensesUsed) =>
      _$this._licensesUsed = licensesUsed;

  ListBuilder<LicensePayment>? _licensePayments;
  ListBuilder<LicensePayment> get licensePayments =>
      _$this._licensePayments ??= ListBuilder<LicensePayment>();
  set licensePayments(ListBuilder<LicensePayment>? licensePayments) =>
      _$this._licensePayments = licensePayments;

  ListBuilder<Feedback>? _feedbacks;
  ListBuilder<Feedback> get feedbacks =>
      _$this._feedbacks ??= ListBuilder<Feedback>();
  set feedbacks(ListBuilder<Feedback>? feedbacks) =>
      _$this._feedbacks = feedbacks;

  ListBuilder<Sortiment>? _sortiments;
  ListBuilder<Sortiment> get sortiments =>
      _$this._sortiments ??= ListBuilder<Sortiment>();
  set sortiments(ListBuilder<Sortiment>? sortiments) =>
      _$this._sortiments = sortiments;

  ListBuilder<DeliveryNote>? _deliveryNotes;
  ListBuilder<DeliveryNote> get deliveryNotes =>
      _$this._deliveryNotes ??= ListBuilder<DeliveryNote>();
  set deliveryNotes(ListBuilder<DeliveryNote>? deliveryNotes) =>
      _$this._deliveryNotes = deliveryNotes;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registeredAt = $v.registeredAt;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _locale = $v.locale;
      _confirmed = $v.confirmed;
      _jwtVersion = $v.jwtVersion;
      _isAdmin = $v.isAdmin;
      _id = $v.id;
      _passwordResetToken = $v.passwordResetToken;
      _firebaseToken = $v.firebaseToken;
      _iDokladId = $v.iDokladId;
      _userGroups = $v.userGroups?.toBuilder();
      _licensesUsed = $v.licensesUsed?.toBuilder();
      _licensePayments = $v.licensePayments?.toBuilder();
      _feedbacks = $v.feedbacks?.toBuilder();
      _sortiments = $v.sortiments?.toBuilder();
      _deliveryNotes = $v.deliveryNotes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          _$User._(
            registeredAt: BuiltValueNullFieldError.checkNotNull(
                registeredAt, r'User', 'registeredAt'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, r'User', 'email'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'User', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'User', 'lastName'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'User', 'password'),
            locale: BuiltValueNullFieldError.checkNotNull(
                locale, r'User', 'locale'),
            confirmed: BuiltValueNullFieldError.checkNotNull(
                confirmed, r'User', 'confirmed'),
            jwtVersion: BuiltValueNullFieldError.checkNotNull(
                jwtVersion, r'User', 'jwtVersion'),
            isAdmin: BuiltValueNullFieldError.checkNotNull(
                isAdmin, r'User', 'isAdmin'),
            id: id,
            passwordResetToken: passwordResetToken,
            firebaseToken: firebaseToken,
            iDokladId: iDokladId,
            userGroups: _userGroups?.build(),
            licensesUsed: _licensesUsed?.build(),
            licensePayments: _licensePayments?.build(),
            feedbacks: _feedbacks?.build(),
            sortiments: _sortiments?.build(),
            deliveryNotes: _deliveryNotes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userGroups';
        _userGroups?.build();
        _$failedField = 'licensesUsed';
        _licensesUsed?.build();
        _$failedField = 'licensePayments';
        _licensePayments?.build();
        _$failedField = 'feedbacks';
        _feedbacks?.build();
        _$failedField = 'sortiments';
        _sortiments?.build();
        _$failedField = 'deliveryNotes';
        _deliveryNotes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
