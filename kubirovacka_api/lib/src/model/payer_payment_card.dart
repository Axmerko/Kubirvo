//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payer_payment_card.g.dart';

/// PayerPaymentCard
///
/// Properties:
/// * [cardNumber]
/// * [cardExpiration]
/// * [cardBrand]
/// * [cardIssuerCountry]
/// * [cardIssuerBank]
/// * [cardToken]
/// * [threeDResult]
/// * [cardFingerPrint]
@BuiltValue()
abstract class PayerPaymentCard
    implements Built<PayerPaymentCard, PayerPaymentCardBuilder> {
  @BuiltValueField(wireName: r'cardNumber')
  String? get cardNumber;

  @BuiltValueField(wireName: r'cardExpiration')
  String? get cardExpiration;

  @BuiltValueField(wireName: r'cardBrand')
  String? get cardBrand;

  @BuiltValueField(wireName: r'cardIssuerCountry')
  String? get cardIssuerCountry;

  @BuiltValueField(wireName: r'cardIssuerBank')
  String? get cardIssuerBank;

  @BuiltValueField(wireName: r'cardToken')
  String? get cardToken;

  @BuiltValueField(wireName: r'threeDResult')
  String? get threeDResult;

  @BuiltValueField(wireName: r'cardFingerPrint')
  String? get cardFingerPrint;

  PayerPaymentCard._();

  factory PayerPaymentCard([void updates(PayerPaymentCardBuilder b)]) =
      _$PayerPaymentCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayerPaymentCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayerPaymentCard> get serializer =>
      _$PayerPaymentCardSerializer();
}

class _$PayerPaymentCardSerializer
    implements PrimitiveSerializer<PayerPaymentCard> {
  @override
  final Iterable<Type> types = const [PayerPaymentCard, _$PayerPaymentCard];

  @override
  final String wireName = r'PayerPaymentCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayerPaymentCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cardNumber != null) {
      yield r'cardNumber';
      yield serializers.serialize(
        object.cardNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardExpiration != null) {
      yield r'cardExpiration';
      yield serializers.serialize(
        object.cardExpiration,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardBrand != null) {
      yield r'cardBrand';
      yield serializers.serialize(
        object.cardBrand,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardIssuerCountry != null) {
      yield r'cardIssuerCountry';
      yield serializers.serialize(
        object.cardIssuerCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardIssuerBank != null) {
      yield r'cardIssuerBank';
      yield serializers.serialize(
        object.cardIssuerBank,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardToken != null) {
      yield r'cardToken';
      yield serializers.serialize(
        object.cardToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.threeDResult != null) {
      yield r'threeDResult';
      yield serializers.serialize(
        object.threeDResult,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cardFingerPrint != null) {
      yield r'cardFingerPrint';
      yield serializers.serialize(
        object.cardFingerPrint,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayerPaymentCard object, {
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
    required PayerPaymentCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cardNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardNumber = valueDes;
          break;
        case r'cardExpiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardExpiration = valueDes;
          break;
        case r'cardBrand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardBrand = valueDes;
          break;
        case r'cardIssuerCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardIssuerCountry = valueDes;
          break;
        case r'cardIssuerBank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardIssuerBank = valueDes;
          break;
        case r'cardToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardToken = valueDes;
          break;
        case r'threeDResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.threeDResult = valueDes;
          break;
        case r'cardFingerPrint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardFingerPrint = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayerPaymentCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayerPaymentCardBuilder();
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
