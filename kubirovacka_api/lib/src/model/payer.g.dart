// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Payer extends Payer {
  @override
  final PaymentInstrument? paymentInstrument;
  @override
  final BuiltList<PaymentInstrument>? allowedPaymentInstruments;
  @override
  final BuiltList<String>? allowedSwifts;
  @override
  final PaymentInstrument? defaultPaymentInstrument;
  @override
  final String? defaultSwift;
  @override
  final PayerContact? contact;
  @override
  final PayerPaymentCard? paymendCard;
  @override
  final String? cardId;
  @override
  final BankAccount? bankAccount;
  @override
  final String? allowedCardToken;
  @override
  final String? verifyPin;
  @override
  final bool? requestCardToken;
  @override
  final String? maskedPan;

  factory _$Payer([void Function(PayerBuilder)? updates]) =>
      (PayerBuilder()..update(updates))._build();

  _$Payer._(
      {this.paymentInstrument,
      this.allowedPaymentInstruments,
      this.allowedSwifts,
      this.defaultPaymentInstrument,
      this.defaultSwift,
      this.contact,
      this.paymendCard,
      this.cardId,
      this.bankAccount,
      this.allowedCardToken,
      this.verifyPin,
      this.requestCardToken,
      this.maskedPan})
      : super._();
  @override
  Payer rebuild(void Function(PayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayerBuilder toBuilder() => PayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payer &&
        paymentInstrument == other.paymentInstrument &&
        allowedPaymentInstruments == other.allowedPaymentInstruments &&
        allowedSwifts == other.allowedSwifts &&
        defaultPaymentInstrument == other.defaultPaymentInstrument &&
        defaultSwift == other.defaultSwift &&
        contact == other.contact &&
        paymendCard == other.paymendCard &&
        cardId == other.cardId &&
        bankAccount == other.bankAccount &&
        allowedCardToken == other.allowedCardToken &&
        verifyPin == other.verifyPin &&
        requestCardToken == other.requestCardToken &&
        maskedPan == other.maskedPan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentInstrument.hashCode);
    _$hash = $jc(_$hash, allowedPaymentInstruments.hashCode);
    _$hash = $jc(_$hash, allowedSwifts.hashCode);
    _$hash = $jc(_$hash, defaultPaymentInstrument.hashCode);
    _$hash = $jc(_$hash, defaultSwift.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, paymendCard.hashCode);
    _$hash = $jc(_$hash, cardId.hashCode);
    _$hash = $jc(_$hash, bankAccount.hashCode);
    _$hash = $jc(_$hash, allowedCardToken.hashCode);
    _$hash = $jc(_$hash, verifyPin.hashCode);
    _$hash = $jc(_$hash, requestCardToken.hashCode);
    _$hash = $jc(_$hash, maskedPan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Payer')
          ..add('paymentInstrument', paymentInstrument)
          ..add('allowedPaymentInstruments', allowedPaymentInstruments)
          ..add('allowedSwifts', allowedSwifts)
          ..add('defaultPaymentInstrument', defaultPaymentInstrument)
          ..add('defaultSwift', defaultSwift)
          ..add('contact', contact)
          ..add('paymendCard', paymendCard)
          ..add('cardId', cardId)
          ..add('bankAccount', bankAccount)
          ..add('allowedCardToken', allowedCardToken)
          ..add('verifyPin', verifyPin)
          ..add('requestCardToken', requestCardToken)
          ..add('maskedPan', maskedPan))
        .toString();
  }
}

class PayerBuilder implements Builder<Payer, PayerBuilder> {
  _$Payer? _$v;

  PaymentInstrument? _paymentInstrument;
  PaymentInstrument? get paymentInstrument => _$this._paymentInstrument;
  set paymentInstrument(PaymentInstrument? paymentInstrument) =>
      _$this._paymentInstrument = paymentInstrument;

  ListBuilder<PaymentInstrument>? _allowedPaymentInstruments;
  ListBuilder<PaymentInstrument> get allowedPaymentInstruments =>
      _$this._allowedPaymentInstruments ??= ListBuilder<PaymentInstrument>();
  set allowedPaymentInstruments(
          ListBuilder<PaymentInstrument>? allowedPaymentInstruments) =>
      _$this._allowedPaymentInstruments = allowedPaymentInstruments;

  ListBuilder<String>? _allowedSwifts;
  ListBuilder<String> get allowedSwifts =>
      _$this._allowedSwifts ??= ListBuilder<String>();
  set allowedSwifts(ListBuilder<String>? allowedSwifts) =>
      _$this._allowedSwifts = allowedSwifts;

  PaymentInstrument? _defaultPaymentInstrument;
  PaymentInstrument? get defaultPaymentInstrument =>
      _$this._defaultPaymentInstrument;
  set defaultPaymentInstrument(PaymentInstrument? defaultPaymentInstrument) =>
      _$this._defaultPaymentInstrument = defaultPaymentInstrument;

  String? _defaultSwift;
  String? get defaultSwift => _$this._defaultSwift;
  set defaultSwift(String? defaultSwift) => _$this._defaultSwift = defaultSwift;

  PayerContactBuilder? _contact;
  PayerContactBuilder get contact => _$this._contact ??= PayerContactBuilder();
  set contact(PayerContactBuilder? contact) => _$this._contact = contact;

  PayerPaymentCardBuilder? _paymendCard;
  PayerPaymentCardBuilder get paymendCard =>
      _$this._paymendCard ??= PayerPaymentCardBuilder();
  set paymendCard(PayerPaymentCardBuilder? paymendCard) =>
      _$this._paymendCard = paymendCard;

  String? _cardId;
  String? get cardId => _$this._cardId;
  set cardId(String? cardId) => _$this._cardId = cardId;

  BankAccountBuilder? _bankAccount;
  BankAccountBuilder get bankAccount =>
      _$this._bankAccount ??= BankAccountBuilder();
  set bankAccount(BankAccountBuilder? bankAccount) =>
      _$this._bankAccount = bankAccount;

  String? _allowedCardToken;
  String? get allowedCardToken => _$this._allowedCardToken;
  set allowedCardToken(String? allowedCardToken) =>
      _$this._allowedCardToken = allowedCardToken;

  String? _verifyPin;
  String? get verifyPin => _$this._verifyPin;
  set verifyPin(String? verifyPin) => _$this._verifyPin = verifyPin;

  bool? _requestCardToken;
  bool? get requestCardToken => _$this._requestCardToken;
  set requestCardToken(bool? requestCardToken) =>
      _$this._requestCardToken = requestCardToken;

  String? _maskedPan;
  String? get maskedPan => _$this._maskedPan;
  set maskedPan(String? maskedPan) => _$this._maskedPan = maskedPan;

  PayerBuilder() {
    Payer._defaults(this);
  }

  PayerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentInstrument = $v.paymentInstrument;
      _allowedPaymentInstruments = $v.allowedPaymentInstruments?.toBuilder();
      _allowedSwifts = $v.allowedSwifts?.toBuilder();
      _defaultPaymentInstrument = $v.defaultPaymentInstrument;
      _defaultSwift = $v.defaultSwift;
      _contact = $v.contact?.toBuilder();
      _paymendCard = $v.paymendCard?.toBuilder();
      _cardId = $v.cardId;
      _bankAccount = $v.bankAccount?.toBuilder();
      _allowedCardToken = $v.allowedCardToken;
      _verifyPin = $v.verifyPin;
      _requestCardToken = $v.requestCardToken;
      _maskedPan = $v.maskedPan;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payer other) {
    _$v = other as _$Payer;
  }

  @override
  void update(void Function(PayerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Payer build() => _build();

  _$Payer _build() {
    _$Payer _$result;
    try {
      _$result = _$v ??
          _$Payer._(
            paymentInstrument: paymentInstrument,
            allowedPaymentInstruments: _allowedPaymentInstruments?.build(),
            allowedSwifts: _allowedSwifts?.build(),
            defaultPaymentInstrument: defaultPaymentInstrument,
            defaultSwift: defaultSwift,
            contact: _contact?.build(),
            paymendCard: _paymendCard?.build(),
            cardId: cardId,
            bankAccount: _bankAccount?.build(),
            allowedCardToken: allowedCardToken,
            verifyPin: verifyPin,
            requestCardToken: requestCardToken,
            maskedPan: maskedPan,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedPaymentInstruments';
        _allowedPaymentInstruments?.build();
        _$failedField = 'allowedSwifts';
        _allowedSwifts?.build();

        _$failedField = 'contact';
        _contact?.build();
        _$failedField = 'paymendCard';
        _paymendCard?.build();

        _$failedField = 'bankAccount';
        _bankAccount?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Payer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
