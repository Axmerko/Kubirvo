// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payer_payment_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayerPaymentCard extends PayerPaymentCard {
  @override
  final String? cardNumber;
  @override
  final String? cardExpiration;
  @override
  final String? cardBrand;
  @override
  final String? cardIssuerCountry;
  @override
  final String? cardIssuerBank;
  @override
  final String? cardToken;
  @override
  final String? threeDResult;
  @override
  final String? cardFingerPrint;

  factory _$PayerPaymentCard(
          [void Function(PayerPaymentCardBuilder)? updates]) =>
      (PayerPaymentCardBuilder()..update(updates))._build();

  _$PayerPaymentCard._(
      {this.cardNumber,
      this.cardExpiration,
      this.cardBrand,
      this.cardIssuerCountry,
      this.cardIssuerBank,
      this.cardToken,
      this.threeDResult,
      this.cardFingerPrint})
      : super._();
  @override
  PayerPaymentCard rebuild(void Function(PayerPaymentCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayerPaymentCardBuilder toBuilder() =>
      PayerPaymentCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayerPaymentCard &&
        cardNumber == other.cardNumber &&
        cardExpiration == other.cardExpiration &&
        cardBrand == other.cardBrand &&
        cardIssuerCountry == other.cardIssuerCountry &&
        cardIssuerBank == other.cardIssuerBank &&
        cardToken == other.cardToken &&
        threeDResult == other.threeDResult &&
        cardFingerPrint == other.cardFingerPrint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cardNumber.hashCode);
    _$hash = $jc(_$hash, cardExpiration.hashCode);
    _$hash = $jc(_$hash, cardBrand.hashCode);
    _$hash = $jc(_$hash, cardIssuerCountry.hashCode);
    _$hash = $jc(_$hash, cardIssuerBank.hashCode);
    _$hash = $jc(_$hash, cardToken.hashCode);
    _$hash = $jc(_$hash, threeDResult.hashCode);
    _$hash = $jc(_$hash, cardFingerPrint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayerPaymentCard')
          ..add('cardNumber', cardNumber)
          ..add('cardExpiration', cardExpiration)
          ..add('cardBrand', cardBrand)
          ..add('cardIssuerCountry', cardIssuerCountry)
          ..add('cardIssuerBank', cardIssuerBank)
          ..add('cardToken', cardToken)
          ..add('threeDResult', threeDResult)
          ..add('cardFingerPrint', cardFingerPrint))
        .toString();
  }
}

class PayerPaymentCardBuilder
    implements Builder<PayerPaymentCard, PayerPaymentCardBuilder> {
  _$PayerPaymentCard? _$v;

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  String? _cardExpiration;
  String? get cardExpiration => _$this._cardExpiration;
  set cardExpiration(String? cardExpiration) =>
      _$this._cardExpiration = cardExpiration;

  String? _cardBrand;
  String? get cardBrand => _$this._cardBrand;
  set cardBrand(String? cardBrand) => _$this._cardBrand = cardBrand;

  String? _cardIssuerCountry;
  String? get cardIssuerCountry => _$this._cardIssuerCountry;
  set cardIssuerCountry(String? cardIssuerCountry) =>
      _$this._cardIssuerCountry = cardIssuerCountry;

  String? _cardIssuerBank;
  String? get cardIssuerBank => _$this._cardIssuerBank;
  set cardIssuerBank(String? cardIssuerBank) =>
      _$this._cardIssuerBank = cardIssuerBank;

  String? _cardToken;
  String? get cardToken => _$this._cardToken;
  set cardToken(String? cardToken) => _$this._cardToken = cardToken;

  String? _threeDResult;
  String? get threeDResult => _$this._threeDResult;
  set threeDResult(String? threeDResult) => _$this._threeDResult = threeDResult;

  String? _cardFingerPrint;
  String? get cardFingerPrint => _$this._cardFingerPrint;
  set cardFingerPrint(String? cardFingerPrint) =>
      _$this._cardFingerPrint = cardFingerPrint;

  PayerPaymentCardBuilder() {
    PayerPaymentCard._defaults(this);
  }

  PayerPaymentCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cardNumber = $v.cardNumber;
      _cardExpiration = $v.cardExpiration;
      _cardBrand = $v.cardBrand;
      _cardIssuerCountry = $v.cardIssuerCountry;
      _cardIssuerBank = $v.cardIssuerBank;
      _cardToken = $v.cardToken;
      _threeDResult = $v.threeDResult;
      _cardFingerPrint = $v.cardFingerPrint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayerPaymentCard other) {
    _$v = other as _$PayerPaymentCard;
  }

  @override
  void update(void Function(PayerPaymentCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayerPaymentCard build() => _build();

  _$PayerPaymentCard _build() {
    final _$result = _$v ??
        _$PayerPaymentCard._(
          cardNumber: cardNumber,
          cardExpiration: cardExpiration,
          cardBrand: cardBrand,
          cardIssuerCountry: cardIssuerCountry,
          cardIssuerBank: cardIssuerBank,
          cardToken: cardToken,
          threeDResult: threeDResult,
          cardFingerPrint: cardFingerPrint,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
