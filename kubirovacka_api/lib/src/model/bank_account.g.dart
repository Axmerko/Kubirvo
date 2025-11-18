// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BankAccount extends BankAccount {
  @override
  final String? prefix;
  @override
  final String? accountNumber;
  @override
  final String? bankCode;
  @override
  final String? iban;
  @override
  final String? bic;
  @override
  final String? accountName;
  @override
  final Country? country;
  @override
  final String? accountToken;

  factory _$BankAccount([void Function(BankAccountBuilder)? updates]) =>
      (BankAccountBuilder()..update(updates))._build();

  _$BankAccount._(
      {this.prefix,
      this.accountNumber,
      this.bankCode,
      this.iban,
      this.bic,
      this.accountName,
      this.country,
      this.accountToken})
      : super._();
  @override
  BankAccount rebuild(void Function(BankAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankAccountBuilder toBuilder() => BankAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankAccount &&
        prefix == other.prefix &&
        accountNumber == other.accountNumber &&
        bankCode == other.bankCode &&
        iban == other.iban &&
        bic == other.bic &&
        accountName == other.accountName &&
        country == other.country &&
        accountToken == other.accountToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, bankCode.hashCode);
    _$hash = $jc(_$hash, iban.hashCode);
    _$hash = $jc(_$hash, bic.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, accountToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankAccount')
          ..add('prefix', prefix)
          ..add('accountNumber', accountNumber)
          ..add('bankCode', bankCode)
          ..add('iban', iban)
          ..add('bic', bic)
          ..add('accountName', accountName)
          ..add('country', country)
          ..add('accountToken', accountToken))
        .toString();
  }
}

class BankAccountBuilder implements Builder<BankAccount, BankAccountBuilder> {
  _$BankAccount? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _bankCode;
  String? get bankCode => _$this._bankCode;
  set bankCode(String? bankCode) => _$this._bankCode = bankCode;

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

  String? _bic;
  String? get bic => _$this._bic;
  set bic(String? bic) => _$this._bic = bic;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  Country? _country;
  Country? get country => _$this._country;
  set country(Country? country) => _$this._country = country;

  String? _accountToken;
  String? get accountToken => _$this._accountToken;
  set accountToken(String? accountToken) => _$this._accountToken = accountToken;

  BankAccountBuilder() {
    BankAccount._defaults(this);
  }

  BankAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _accountNumber = $v.accountNumber;
      _bankCode = $v.bankCode;
      _iban = $v.iban;
      _bic = $v.bic;
      _accountName = $v.accountName;
      _country = $v.country;
      _accountToken = $v.accountToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankAccount other) {
    _$v = other as _$BankAccount;
  }

  @override
  void update(void Function(BankAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankAccount build() => _build();

  _$BankAccount _build() {
    final _$result = _$v ??
        _$BankAccount._(
          prefix: prefix,
          accountNumber: accountNumber,
          bankCode: bankCode,
          iban: iban,
          bic: bic,
          accountName: accountName,
          country: country,
          accountToken: accountToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
