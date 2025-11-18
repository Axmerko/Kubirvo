//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generated_jwt_dto.g.dart';

/// GeneratedJwtDTO
///
/// Properties:
/// * [token]
/// * [expiration]
@BuiltValue()
abstract class GeneratedJwtDTO
    implements Built<GeneratedJwtDTO, GeneratedJwtDTOBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'expiration')
  DateTime? get expiration;

  GeneratedJwtDTO._();

  factory GeneratedJwtDTO([void updates(GeneratedJwtDTOBuilder b)]) =
      _$GeneratedJwtDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeneratedJwtDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GeneratedJwtDTO> get serializer =>
      _$GeneratedJwtDTOSerializer();
}

class _$GeneratedJwtDTOSerializer
    implements PrimitiveSerializer<GeneratedJwtDTO> {
  @override
  final Iterable<Type> types = const [GeneratedJwtDTO, _$GeneratedJwtDTO];

  @override
  final String wireName = r'GeneratedJwtDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeneratedJwtDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.expiration != null) {
      yield r'expiration';
      yield serializers.serialize(
        object.expiration,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GeneratedJwtDTO object, {
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
    required GeneratedJwtDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeneratedJwtDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeneratedJwtDTOBuilder();
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
