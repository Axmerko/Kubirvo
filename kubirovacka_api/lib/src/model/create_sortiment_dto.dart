//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_sortiment_dto.g.dart';

/// CreateSortimentDTO
///
/// Properties:
/// * [name]
/// * [code]
@BuiltValue()
abstract class CreateSortimentDTO
    implements Built<CreateSortimentDTO, CreateSortimentDTOBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'code')
  String? get code;

  CreateSortimentDTO._();

  factory CreateSortimentDTO([void updates(CreateSortimentDTOBuilder b)]) =
      _$CreateSortimentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSortimentDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSortimentDTO> get serializer =>
      _$CreateSortimentDTOSerializer();
}

class _$CreateSortimentDTOSerializer
    implements PrimitiveSerializer<CreateSortimentDTO> {
  @override
  final Iterable<Type> types = const [CreateSortimentDTO, _$CreateSortimentDTO];

  @override
  final String wireName = r'CreateSortimentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSortimentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSortimentDTO object, {
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
    required CreateSortimentDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSortimentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSortimentDTOBuilder();
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
