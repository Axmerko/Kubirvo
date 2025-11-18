//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sortiment_dto.g.dart';

/// SortimentDTO
///
/// Properties:
/// * [id]
/// * [ownerGroupGuid]
/// * [ownerUserGuid]
/// * [name]
/// * [code]
@BuiltValue()
abstract class SortimentDTO
    implements Built<SortimentDTO, SortimentDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'ownerGroupGuid')
  String? get ownerGroupGuid;

  @BuiltValueField(wireName: r'ownerUserGuid')
  String? get ownerUserGuid;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'code')
  String? get code;

  SortimentDTO._();

  factory SortimentDTO([void updates(SortimentDTOBuilder b)]) = _$SortimentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortimentDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortimentDTO> get serializer => _$SortimentDTOSerializer();
}

class _$SortimentDTOSerializer implements PrimitiveSerializer<SortimentDTO> {
  @override
  final Iterable<Type> types = const [SortimentDTO, _$SortimentDTO];

  @override
  final String wireName = r'SortimentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortimentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerGroupGuid != null) {
      yield r'ownerGroupGuid';
      yield serializers.serialize(
        object.ownerGroupGuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerUserGuid != null) {
      yield r'ownerUserGuid';
      yield serializers.serialize(
        object.ownerUserGuid,
        specifiedType: const FullType(String),
      );
    }
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
    SortimentDTO object, {
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
    required SortimentDTOBuilder result,
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
        case r'ownerGroupGuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupGuid = valueDes;
          break;
        case r'ownerUserGuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerUserGuid = valueDes;
          break;
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
  SortimentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortimentDTOBuilder();
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
