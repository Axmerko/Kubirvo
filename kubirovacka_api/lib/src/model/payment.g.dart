// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Payment extends Payment {
  @override
  final int? id;
  @override
  final int? parentId;
  @override
  final String? orderNumber;
  @override
  final SessionState? state;
  @override
  final SessionSubState? subState;
  @override
  final PaymentInstrument? paymentInstrument;
  @override
  final int? amount;
  @override
  final Currency? currency;
  @override
  final Payer? payer;
  @override
  final Target? target;
  @override
  final Recurrence? recurrence;
  @override
  final PreAuthorization? preAuthorization;
  @override
  final BuiltList<AdditionalParam>? additionalParams;
  @override
  final String? lang;
  @override
  final String? gwUrl;
  @override
  final EETCode? eetCode;
  @override
  final BuiltList<OrderItem>? items;
  @override
  final bool? error;

  factory _$Payment([void Function(PaymentBuilder)? updates]) =>
      (PaymentBuilder()..update(updates))._build();

  _$Payment._(
      {this.id,
      this.parentId,
      this.orderNumber,
      this.state,
      this.subState,
      this.paymentInstrument,
      this.amount,
      this.currency,
      this.payer,
      this.target,
      this.recurrence,
      this.preAuthorization,
      this.additionalParams,
      this.lang,
      this.gwUrl,
      this.eetCode,
      this.items,
      this.error})
      : super._();
  @override
  Payment rebuild(void Function(PaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentBuilder toBuilder() => PaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
        id == other.id &&
        parentId == other.parentId &&
        orderNumber == other.orderNumber &&
        state == other.state &&
        subState == other.subState &&
        paymentInstrument == other.paymentInstrument &&
        amount == other.amount &&
        currency == other.currency &&
        payer == other.payer &&
        target == other.target &&
        recurrence == other.recurrence &&
        preAuthorization == other.preAuthorization &&
        additionalParams == other.additionalParams &&
        lang == other.lang &&
        gwUrl == other.gwUrl &&
        eetCode == other.eetCode &&
        items == other.items &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subState.hashCode);
    _$hash = $jc(_$hash, paymentInstrument.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, payer.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, recurrence.hashCode);
    _$hash = $jc(_$hash, preAuthorization.hashCode);
    _$hash = $jc(_$hash, additionalParams.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, gwUrl.hashCode);
    _$hash = $jc(_$hash, eetCode.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Payment')
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('orderNumber', orderNumber)
          ..add('state', state)
          ..add('subState', subState)
          ..add('paymentInstrument', paymentInstrument)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('payer', payer)
          ..add('target', target)
          ..add('recurrence', recurrence)
          ..add('preAuthorization', preAuthorization)
          ..add('additionalParams', additionalParams)
          ..add('lang', lang)
          ..add('gwUrl', gwUrl)
          ..add('eetCode', eetCode)
          ..add('items', items)
          ..add('error', error))
        .toString();
  }
}

class PaymentBuilder implements Builder<Payment, PaymentBuilder> {
  _$Payment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(String? orderNumber) => _$this._orderNumber = orderNumber;

  SessionState? _state;
  SessionState? get state => _$this._state;
  set state(SessionState? state) => _$this._state = state;

  SessionSubState? _subState;
  SessionSubState? get subState => _$this._subState;
  set subState(SessionSubState? subState) => _$this._subState = subState;

  PaymentInstrument? _paymentInstrument;
  PaymentInstrument? get paymentInstrument => _$this._paymentInstrument;
  set paymentInstrument(PaymentInstrument? paymentInstrument) =>
      _$this._paymentInstrument = paymentInstrument;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  Currency? _currency;
  Currency? get currency => _$this._currency;
  set currency(Currency? currency) => _$this._currency = currency;

  PayerBuilder? _payer;
  PayerBuilder get payer => _$this._payer ??= PayerBuilder();
  set payer(PayerBuilder? payer) => _$this._payer = payer;

  TargetBuilder? _target;
  TargetBuilder get target => _$this._target ??= TargetBuilder();
  set target(TargetBuilder? target) => _$this._target = target;

  RecurrenceBuilder? _recurrence;
  RecurrenceBuilder get recurrence =>
      _$this._recurrence ??= RecurrenceBuilder();
  set recurrence(RecurrenceBuilder? recurrence) =>
      _$this._recurrence = recurrence;

  PreAuthorizationBuilder? _preAuthorization;
  PreAuthorizationBuilder get preAuthorization =>
      _$this._preAuthorization ??= PreAuthorizationBuilder();
  set preAuthorization(PreAuthorizationBuilder? preAuthorization) =>
      _$this._preAuthorization = preAuthorization;

  ListBuilder<AdditionalParam>? _additionalParams;
  ListBuilder<AdditionalParam> get additionalParams =>
      _$this._additionalParams ??= ListBuilder<AdditionalParam>();
  set additionalParams(ListBuilder<AdditionalParam>? additionalParams) =>
      _$this._additionalParams = additionalParams;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _gwUrl;
  String? get gwUrl => _$this._gwUrl;
  set gwUrl(String? gwUrl) => _$this._gwUrl = gwUrl;

  EETCodeBuilder? _eetCode;
  EETCodeBuilder get eetCode => _$this._eetCode ??= EETCodeBuilder();
  set eetCode(EETCodeBuilder? eetCode) => _$this._eetCode = eetCode;

  ListBuilder<OrderItem>? _items;
  ListBuilder<OrderItem> get items =>
      _$this._items ??= ListBuilder<OrderItem>();
  set items(ListBuilder<OrderItem>? items) => _$this._items = items;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  PaymentBuilder() {
    Payment._defaults(this);
  }

  PaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _parentId = $v.parentId;
      _orderNumber = $v.orderNumber;
      _state = $v.state;
      _subState = $v.subState;
      _paymentInstrument = $v.paymentInstrument;
      _amount = $v.amount;
      _currency = $v.currency;
      _payer = $v.payer?.toBuilder();
      _target = $v.target?.toBuilder();
      _recurrence = $v.recurrence?.toBuilder();
      _preAuthorization = $v.preAuthorization?.toBuilder();
      _additionalParams = $v.additionalParams?.toBuilder();
      _lang = $v.lang;
      _gwUrl = $v.gwUrl;
      _eetCode = $v.eetCode?.toBuilder();
      _items = $v.items?.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payment other) {
    _$v = other as _$Payment;
  }

  @override
  void update(void Function(PaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Payment build() => _build();

  _$Payment _build() {
    _$Payment _$result;
    try {
      _$result = _$v ??
          _$Payment._(
            id: id,
            parentId: parentId,
            orderNumber: orderNumber,
            state: state,
            subState: subState,
            paymentInstrument: paymentInstrument,
            amount: amount,
            currency: currency,
            payer: _payer?.build(),
            target: _target?.build(),
            recurrence: _recurrence?.build(),
            preAuthorization: _preAuthorization?.build(),
            additionalParams: _additionalParams?.build(),
            lang: lang,
            gwUrl: gwUrl,
            eetCode: _eetCode?.build(),
            items: _items?.build(),
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payer';
        _payer?.build();
        _$failedField = 'target';
        _target?.build();
        _$failedField = 'recurrence';
        _recurrence?.build();
        _$failedField = 'preAuthorization';
        _preAuthorization?.build();
        _$failedField = 'additionalParams';
        _additionalParams?.build();

        _$failedField = 'eetCode';
        _eetCode?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Payment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
