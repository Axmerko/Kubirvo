//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_instrument.g.dart';

class PaymentInstrument extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PAYMENT_CARD')
  static const PaymentInstrument PAYMENT_CARD = _$PAYMENT_CARD;
  @BuiltValueEnumConst(wireName: r'BANK_ACCOUNT')
  static const PaymentInstrument BANK_ACCOUNT = _$BANK_ACCOUNT;
  @BuiltValueEnumConst(wireName: r'PRSMS')
  static const PaymentInstrument PRSMS = _$PRSMS;
  @BuiltValueEnumConst(wireName: r'MPAYMENT')
  static const PaymentInstrument MPAYMENT = _$MPAYMENT;
  @BuiltValueEnumConst(wireName: r'COUPON')
  static const PaymentInstrument COUPON = _$COUPON;
  @BuiltValueEnumConst(wireName: r'PAYSAFECARD')
  static const PaymentInstrument PAYSAFECARD = _$PAYSAFECARD;
  @BuiltValueEnumConst(wireName: r'SUPERCASH')
  static const PaymentInstrument SUPERCASH = _$SUPERCASH;
  @BuiltValueEnumConst(wireName: r'GOPAY')
  static const PaymentInstrument GOPAY = _$GOPAY;
  @BuiltValueEnumConst(wireName: r'PAYPAL')
  static const PaymentInstrument PAYPAL = _$PAYPAL;
  @BuiltValueEnumConst(wireName: r'BITCOIN')
  static const PaymentInstrument BITCOIN = _$BITCOIN;
  @BuiltValueEnumConst(wireName: r'MASTERPASS')
  static const PaymentInstrument MASTERPASS = _$MASTERPASS;
  @BuiltValueEnumConst(wireName: r'ACCOUNT')
  static const PaymentInstrument ACCOUNT = _$ACCOUNT;
  @BuiltValueEnumConst(wireName: r'GPAY')
  static const PaymentInstrument GPAY = _$GPAY;
  @BuiltValueEnumConst(wireName: r'APPLE_PAY')
  static const PaymentInstrument APPLE_PAY = _$APPLE_PAY;
  @BuiltValueEnumConst(wireName: r'CLICK_TO_PAY')
  static const PaymentInstrument CLICK_TO_PAY = _$CLICK_TO_PAY;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const PaymentInstrument UNKNOWN = _$UNKNOWN;

  static Serializer<PaymentInstrument> get serializer =>
      _$paymentInstrumentSerializer;

  const PaymentInstrument._(String name) : super(name);

  static BuiltSet<PaymentInstrument> get values => _$values;
  static PaymentInstrument valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaymentInstrumentMixin = Object with _$PaymentInstrumentMixin;
