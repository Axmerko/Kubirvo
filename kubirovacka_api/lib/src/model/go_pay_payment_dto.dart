//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'go_pay_payment_dto.g.dart';

/// GoPayPaymentDTO
///
/// Properties:
/// * [gwUrl]
@BuiltValue()
abstract class GoPayPaymentDTO
    implements Built<GoPayPaymentDTO, GoPayPaymentDTOBuilder> {
  @BuiltValueField(wireName: r'gw_url')
  String? get gwUrl;

  GoPayPaymentDTO._();

  factory GoPayPaymentDTO([void updates(GoPayPaymentDTOBuilder b)]) =
      _$GoPayPaymentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GoPayPaymentDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GoPayPaymentDTO> get serializer =>
      _$GoPayPaymentDTOSerializer();
}

class _$GoPayPaymentDTOSerializer
    implements PrimitiveSerializer<GoPayPaymentDTO> {
  @override
  final Iterable<Type> types = const [GoPayPaymentDTO, _$GoPayPaymentDTO];

  @override
  final String wireName = r'GoPayPaymentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GoPayPaymentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.gwUrl != null) {
      yield r'gw_url';
      yield serializers.serialize(
        object.gwUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GoPayPaymentDTO object, {
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
    required GoPayPaymentDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gw_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gwUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GoPayPaymentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GoPayPaymentDTOBuilder();
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
