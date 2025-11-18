//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/payer_payment_card.dart';
import 'package:kubirovacka_api/src/model/payment_instrument.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/bank_account.dart';
import 'package:kubirovacka_api/src/model/payer_contact.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payer.g.dart';

/// Payer
///
/// Properties:
/// * [paymentInstrument]
/// * [allowedPaymentInstruments]
/// * [allowedSwifts]
/// * [defaultPaymentInstrument]
/// * [defaultSwift]
/// * [contact]
/// * [paymendCard]
/// * [cardId]
/// * [bankAccount]
/// * [allowedCardToken]
/// * [verifyPin]
/// * [requestCardToken]
/// * [maskedPan]
@BuiltValue()
abstract class Payer implements Built<Payer, PayerBuilder> {
  @BuiltValueField(wireName: r'paymentInstrument')
  PaymentInstrument? get paymentInstrument;
  // enum paymentInstrumentEnum {  PAYMENT_CARD,  BANK_ACCOUNT,  PRSMS,  MPAYMENT,  COUPON,  PAYSAFECARD,  SUPERCASH,  GOPAY,  PAYPAL,  BITCOIN,  MASTERPASS,  ACCOUNT,  GPAY,  APPLE_PAY,  CLICK_TO_PAY,  UNKNOWN,  };

  @BuiltValueField(wireName: r'allowedPaymentInstruments')
  BuiltList<PaymentInstrument>? get allowedPaymentInstruments;

  @BuiltValueField(wireName: r'allowedSwifts')
  BuiltList<String>? get allowedSwifts;

  @BuiltValueField(wireName: r'defaultPaymentInstrument')
  PaymentInstrument? get defaultPaymentInstrument;
  // enum defaultPaymentInstrumentEnum {  PAYMENT_CARD,  BANK_ACCOUNT,  PRSMS,  MPAYMENT,  COUPON,  PAYSAFECARD,  SUPERCASH,  GOPAY,  PAYPAL,  BITCOIN,  MASTERPASS,  ACCOUNT,  GPAY,  APPLE_PAY,  CLICK_TO_PAY,  UNKNOWN,  };

  @BuiltValueField(wireName: r'defaultSwift')
  String? get defaultSwift;

  @BuiltValueField(wireName: r'contact')
  PayerContact? get contact;

  @BuiltValueField(wireName: r'paymendCard')
  PayerPaymentCard? get paymendCard;

  @BuiltValueField(wireName: r'cardId')
  String? get cardId;

  @BuiltValueField(wireName: r'bankAccount')
  BankAccount? get bankAccount;

  @BuiltValueField(wireName: r'allowedCardToken')
  String? get allowedCardToken;

  @BuiltValueField(wireName: r'verifyPin')
  String? get verifyPin;

  @BuiltValueField(wireName: r'requestCardToken')
  bool? get requestCardToken;

  @BuiltValueField(wireName: r'maskedPan')
  String? get maskedPan;

  Payer._();

  factory Payer([void updates(PayerBuilder b)]) = _$Payer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Payer> get serializer => _$PayerSerializer();
}

class _$PayerSerializer implements PrimitiveSerializer<Payer> {
  @override
  final Iterable<Type> types = const [Payer, _$Payer];

  @override
  final String wireName = r'Payer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Payer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.paymentInstrument != null) {
      yield r'paymentInstrument';
      yield serializers.serialize(
        object.paymentInstrument,
        specifiedType: const FullType(PaymentInstrument),
      );
    }
    if (object.allowedPaymentInstruments != null) {
      yield r'allowedPaymentInstruments';
      yield serializers.serialize(
        object.allowedPaymentInstruments,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(PaymentInstrument)]),
      );
    }
    if (object.allowedSwifts != null) {
      yield r'allowedSwifts';
      yield serializers.serialize(
        object.allowedSwifts,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.defaultPaymentInstrument != null) {
      yield r'defaultPaymentInstrument';
      yield serializers.serialize(
        object.defaultPaymentInstrument,
        specifiedType: const FullType(PaymentInstrument),
      );
    }
    if (object.defaultSwift != null) {
      yield r'defaultSwift';
      yield serializers.serialize(
        object.defaultSwift,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(PayerContact),
      );
    }
    if (object.paymendCard != null) {
      yield r'paymendCard';
      yield serializers.serialize(
        object.paymendCard,
        specifiedType: const FullType(PayerPaymentCard),
      );
    }
    if (object.cardId != null) {
      yield r'cardId';
      yield serializers.serialize(
        object.cardId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bankAccount != null) {
      yield r'bankAccount';
      yield serializers.serialize(
        object.bankAccount,
        specifiedType: const FullType(BankAccount),
      );
    }
    if (object.allowedCardToken != null) {
      yield r'allowedCardToken';
      yield serializers.serialize(
        object.allowedCardToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.verifyPin != null) {
      yield r'verifyPin';
      yield serializers.serialize(
        object.verifyPin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.requestCardToken != null) {
      yield r'requestCardToken';
      yield serializers.serialize(
        object.requestCardToken,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maskedPan != null) {
      yield r'maskedPan';
      yield serializers.serialize(
        object.maskedPan,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Payer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paymentInstrument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInstrument),
          ) as PaymentInstrument;
          result.paymentInstrument = valueDes;
          break;
        case r'allowedPaymentInstruments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PaymentInstrument)]),
          ) as BuiltList<PaymentInstrument>?;
          if (valueDes == null) continue;
          result.allowedPaymentInstruments.replace(valueDes);
          break;
        case r'allowedSwifts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowedSwifts.replace(valueDes);
          break;
        case r'defaultPaymentInstrument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInstrument),
          ) as PaymentInstrument;
          result.defaultPaymentInstrument = valueDes;
          break;
        case r'defaultSwift':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultSwift = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PayerContact),
          ) as PayerContact;
          result.contact.replace(valueDes);
          break;
        case r'paymendCard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PayerPaymentCard),
          ) as PayerPaymentCard;
          result.paymendCard.replace(valueDes);
          break;
        case r'cardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardId = valueDes;
          break;
        case r'bankAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BankAccount),
          ) as BankAccount;
          result.bankAccount.replace(valueDes);
          break;
        case r'allowedCardToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.allowedCardToken = valueDes;
          break;
        case r'verifyPin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verifyPin = valueDes;
          break;
        case r'requestCardToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requestCardToken = valueDes;
          break;
        case r'maskedPan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maskedPan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Payer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
