//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_log_list_dto.g.dart';

/// ShareLogListDTO
///
/// Properties:
/// * [email]
/// * [woodLogListIds]
/// * [message]
@BuiltValue()
abstract class ShareLogListDTO
    implements Built<ShareLogListDTO, ShareLogListDTOBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'woodLogListIds')
  BuiltList<String> get woodLogListIds;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ShareLogListDTO._();

  factory ShareLogListDTO([void updates(ShareLogListDTOBuilder b)]) =
      _$ShareLogListDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareLogListDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareLogListDTO> get serializer =>
      _$ShareLogListDTOSerializer();
}

class _$ShareLogListDTOSerializer
    implements PrimitiveSerializer<ShareLogListDTO> {
  @override
  final Iterable<Type> types = const [ShareLogListDTO, _$ShareLogListDTO];

  @override
  final String wireName = r'ShareLogListDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareLogListDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'woodLogListIds';
    yield serializers.serialize(
      object.woodLogListIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareLogListDTO object, {
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
    required ShareLogListDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'woodLogListIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.woodLogListIds.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareLogListDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareLogListDTOBuilder();
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
