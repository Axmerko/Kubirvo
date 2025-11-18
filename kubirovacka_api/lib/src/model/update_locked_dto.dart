//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_locked_dto.g.dart';

/// UpdateLockedDTO
///
/// Properties:
/// * [id]
/// * [locked]
@BuiltValue()
abstract class UpdateLockedDTO
    implements Built<UpdateLockedDTO, UpdateLockedDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'locked')
  bool get locked;

  UpdateLockedDTO._();

  factory UpdateLockedDTO([void updates(UpdateLockedDTOBuilder b)]) =
      _$UpdateLockedDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateLockedDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateLockedDTO> get serializer =>
      _$UpdateLockedDTOSerializer();
}

class _$UpdateLockedDTOSerializer
    implements PrimitiveSerializer<UpdateLockedDTO> {
  @override
  final Iterable<Type> types = const [UpdateLockedDTO, _$UpdateLockedDTO];

  @override
  final String wireName = r'UpdateLockedDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateLockedDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'locked';
    yield serializers.serialize(
      object.locked,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateLockedDTO object, {
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
    required UpdateLockedDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateLockedDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateLockedDTOBuilder();
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
