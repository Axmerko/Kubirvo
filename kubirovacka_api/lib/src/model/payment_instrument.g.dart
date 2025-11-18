// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_instrument.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentInstrument _$PAYMENT_CARD =
    const PaymentInstrument._('PAYMENT_CARD');
const PaymentInstrument _$BANK_ACCOUNT =
    const PaymentInstrument._('BANK_ACCOUNT');
const PaymentInstrument _$PRSMS = const PaymentInstrument._('PRSMS');
const PaymentInstrument _$MPAYMENT = const PaymentInstrument._('MPAYMENT');
const PaymentInstrument _$COUPON = const PaymentInstrument._('COUPON');
const PaymentInstrument _$PAYSAFECARD =
    const PaymentInstrument._('PAYSAFECARD');
const PaymentInstrument _$SUPERCASH = const PaymentInstrument._('SUPERCASH');
const PaymentInstrument _$GOPAY = const PaymentInstrument._('GOPAY');
const PaymentInstrument _$PAYPAL = const PaymentInstrument._('PAYPAL');
const PaymentInstrument _$BITCOIN = const PaymentInstrument._('BITCOIN');
const PaymentInstrument _$MASTERPASS = const PaymentInstrument._('MASTERPASS');
const PaymentInstrument _$ACCOUNT = const PaymentInstrument._('ACCOUNT');
const PaymentInstrument _$GPAY = const PaymentInstrument._('GPAY');
const PaymentInstrument _$APPLE_PAY = const PaymentInstrument._('APPLE_PAY');
const PaymentInstrument _$CLICK_TO_PAY =
    const PaymentInstrument._('CLICK_TO_PAY');
const PaymentInstrument _$UNKNOWN = const PaymentInstrument._('UNKNOWN');

PaymentInstrument _$valueOf(String name) {
  switch (name) {
    case 'PAYMENT_CARD':
      return _$PAYMENT_CARD;
    case 'BANK_ACCOUNT':
      return _$BANK_ACCOUNT;
    case 'PRSMS':
      return _$PRSMS;
    case 'MPAYMENT':
      return _$MPAYMENT;
    case 'COUPON':
      return _$COUPON;
    case 'PAYSAFECARD':
      return _$PAYSAFECARD;
    case 'SUPERCASH':
      return _$SUPERCASH;
    case 'GOPAY':
      return _$GOPAY;
    case 'PAYPAL':
      return _$PAYPAL;
    case 'BITCOIN':
      return _$BITCOIN;
    case 'MASTERPASS':
      return _$MASTERPASS;
    case 'ACCOUNT':
      return _$ACCOUNT;
    case 'GPAY':
      return _$GPAY;
    case 'APPLE_PAY':
      return _$APPLE_PAY;
    case 'CLICK_TO_PAY':
      return _$CLICK_TO_PAY;
    case 'UNKNOWN':
      return _$UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentInstrument> _$values =
    BuiltSet<PaymentInstrument>(const <PaymentInstrument>[
  _$PAYMENT_CARD,
  _$BANK_ACCOUNT,
  _$PRSMS,
  _$MPAYMENT,
  _$COUPON,
  _$PAYSAFECARD,
  _$SUPERCASH,
  _$GOPAY,
  _$PAYPAL,
  _$BITCOIN,
  _$MASTERPASS,
  _$ACCOUNT,
  _$GPAY,
  _$APPLE_PAY,
  _$CLICK_TO_PAY,
  _$UNKNOWN,
]);

class _$PaymentInstrumentMeta {
  const _$PaymentInstrumentMeta();
  PaymentInstrument get PAYMENT_CARD => _$PAYMENT_CARD;
  PaymentInstrument get BANK_ACCOUNT => _$BANK_ACCOUNT;
  PaymentInstrument get PRSMS => _$PRSMS;
  PaymentInstrument get MPAYMENT => _$MPAYMENT;
  PaymentInstrument get COUPON => _$COUPON;
  PaymentInstrument get PAYSAFECARD => _$PAYSAFECARD;
  PaymentInstrument get SUPERCASH => _$SUPERCASH;
  PaymentInstrument get GOPAY => _$GOPAY;
  PaymentInstrument get PAYPAL => _$PAYPAL;
  PaymentInstrument get BITCOIN => _$BITCOIN;
  PaymentInstrument get MASTERPASS => _$MASTERPASS;
  PaymentInstrument get ACCOUNT => _$ACCOUNT;
  PaymentInstrument get GPAY => _$GPAY;
  PaymentInstrument get APPLE_PAY => _$APPLE_PAY;
  PaymentInstrument get CLICK_TO_PAY => _$CLICK_TO_PAY;
  PaymentInstrument get UNKNOWN => _$UNKNOWN;
  PaymentInstrument valueOf(String name) => _$valueOf(name);
  BuiltSet<PaymentInstrument> get values => _$values;
}

abstract class _$PaymentInstrumentMixin {
  // ignore: non_constant_identifier_names
  _$PaymentInstrumentMeta get PaymentInstrument =>
      const _$PaymentInstrumentMeta();
}

Serializer<PaymentInstrument> _$paymentInstrumentSerializer =
    _$PaymentInstrumentSerializer();

class _$PaymentInstrumentSerializer
    implements PrimitiveSerializer<PaymentInstrument> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PAYMENT_CARD': 'PAYMENT_CARD',
    'BANK_ACCOUNT': 'BANK_ACCOUNT',
    'PRSMS': 'PRSMS',
    'MPAYMENT': 'MPAYMENT',
    'COUPON': 'COUPON',
    'PAYSAFECARD': 'PAYSAFECARD',
    'SUPERCASH': 'SUPERCASH',
    'GOPAY': 'GOPAY',
    'PAYPAL': 'PAYPAL',
    'BITCOIN': 'BITCOIN',
    'MASTERPASS': 'MASTERPASS',
    'ACCOUNT': 'ACCOUNT',
    'GPAY': 'GPAY',
    'APPLE_PAY': 'APPLE_PAY',
    'CLICK_TO_PAY': 'CLICK_TO_PAY',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PAYMENT_CARD': 'PAYMENT_CARD',
    'BANK_ACCOUNT': 'BANK_ACCOUNT',
    'PRSMS': 'PRSMS',
    'MPAYMENT': 'MPAYMENT',
    'COUPON': 'COUPON',
    'PAYSAFECARD': 'PAYSAFECARD',
    'SUPERCASH': 'SUPERCASH',
    'GOPAY': 'GOPAY',
    'PAYPAL': 'PAYPAL',
    'BITCOIN': 'BITCOIN',
    'MASTERPASS': 'MASTERPASS',
    'ACCOUNT': 'ACCOUNT',
    'GPAY': 'GPAY',
    'APPLE_PAY': 'APPLE_PAY',
    'CLICK_TO_PAY': 'CLICK_TO_PAY',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentInstrument];
  @override
  final String wireName = 'PaymentInstrument';

  @override
  Object serialize(Serializers serializers, PaymentInstrument object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentInstrument deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentInstrument.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
