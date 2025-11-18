//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pricing_options.g.dart';

/// PricingOptions
///
/// Properties:
/// * [monthlyPrice]
/// * [yearlyPrice]
@BuiltValue()
abstract class PricingOptions
    implements Built<PricingOptions, PricingOptionsBuilder> {
  @BuiltValueField(wireName: r'monthlyPrice')
  int? get monthlyPrice;

  @BuiltValueField(wireName: r'yearlyPrice')
  int? get yearlyPrice;

  PricingOptions._();

  factory PricingOptions([void updates(PricingOptionsBuilder b)]) =
      _$PricingOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PricingOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PricingOptions> get serializer =>
      _$PricingOptionsSerializer();
}

class _$PricingOptionsSerializer
    implements PrimitiveSerializer<PricingOptions> {
  @override
  final Iterable<Type> types = const [PricingOptions, _$PricingOptions];

  @override
  final String wireName = r'PricingOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PricingOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.monthlyPrice != null) {
      yield r'monthlyPrice';
      yield serializers.serialize(
        object.monthlyPrice,
        specifiedType: const FullType(int),
      );
    }
    if (object.yearlyPrice != null) {
      yield r'yearlyPrice';
      yield serializers.serialize(
        object.yearlyPrice,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PricingOptions object, {
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
    required PricingOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'monthlyPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.monthlyPrice = valueDes;
          break;
        case r'yearlyPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.yearlyPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PricingOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PricingOptionsBuilder();
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
