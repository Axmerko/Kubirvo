// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payer_contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayerContact extends PayerContact {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? postalCode;
  @override
  final Country? countryCode;

  factory _$PayerContact([void Function(PayerContactBuilder)? updates]) =>
      (PayerContactBuilder()..update(updates))._build();

  _$PayerContact._(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.city,
      this.street,
      this.postalCode,
      this.countryCode})
      : super._();
  @override
  PayerContact rebuild(void Function(PayerContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayerContactBuilder toBuilder() => PayerContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayerContact &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        city == other.city &&
        street == other.street &&
        postalCode == other.postalCode &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayerContact')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('city', city)
          ..add('street', street)
          ..add('postalCode', postalCode)
          ..add('countryCode', countryCode))
        .toString();
  }
}

class PayerContactBuilder
    implements Builder<PayerContact, PayerContactBuilder> {
  _$PayerContact? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  Country? _countryCode;
  Country? get countryCode => _$this._countryCode;
  set countryCode(Country? countryCode) => _$this._countryCode = countryCode;

  PayerContactBuilder() {
    PayerContact._defaults(this);
  }

  PayerContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _city = $v.city;
      _street = $v.street;
      _postalCode = $v.postalCode;
      _countryCode = $v.countryCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayerContact other) {
    _$v = other as _$PayerContact;
  }

  @override
  void update(void Function(PayerContactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayerContact build() => _build();

  _$PayerContact _build() {
    final _$result = _$v ??
        _$PayerContact._(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phoneNumber,
          city: city,
          street: street,
          postalCode: postalCode,
          countryCode: countryCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
