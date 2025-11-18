//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apple_notification_dto.g.dart';

/// AppleNotificationDTO
///
/// Properties:
/// * [signedPayload]
@BuiltValue()
abstract class AppleNotificationDTO
    implements Built<AppleNotificationDTO, AppleNotificationDTOBuilder> {
  @BuiltValueField(wireName: r'signedPayload')
  String? get signedPayload;

  AppleNotificationDTO._();

  factory AppleNotificationDTO([void updates(AppleNotificationDTOBuilder b)]) =
      _$AppleNotificationDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppleNotificationDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppleNotificationDTO> get serializer =>
      _$AppleNotificationDTOSerializer();
}

class _$AppleNotificationDTOSerializer
    implements PrimitiveSerializer<AppleNotificationDTO> {
  @override
  final Iterable<Type> types = const [
    AppleNotificationDTO,
    _$AppleNotificationDTO
  ];

  @override
  final String wireName = r'AppleNotificationDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppleNotificationDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signedPayload != null) {
      yield r'signedPayload';
      yield serializers.serialize(
        object.signedPayload,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppleNotificationDTO object, {
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
    required AppleNotificationDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedPayload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signedPayload = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppleNotificationDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppleNotificationDTOBuilder();
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
