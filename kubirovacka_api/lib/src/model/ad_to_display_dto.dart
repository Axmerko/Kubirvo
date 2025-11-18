//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/ad_content_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_to_display_dto.g.dart';

/// AdToDisplayDTO
///
/// Properties:
/// * [id]
/// * [url]
/// * [contentType]
/// * [content]
@BuiltValue()
abstract class AdToDisplayDTO
    implements Built<AdToDisplayDTO, AdToDisplayDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'contentType')
  AdContentType? get contentType;
  // enum contentTypeEnum {  Image,  Html,  };

  @BuiltValueField(wireName: r'content')
  String? get content;

  AdToDisplayDTO._();

  factory AdToDisplayDTO([void updates(AdToDisplayDTOBuilder b)]) =
      _$AdToDisplayDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdToDisplayDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdToDisplayDTO> get serializer =>
      _$AdToDisplayDTOSerializer();
}

class _$AdToDisplayDTOSerializer
    implements PrimitiveSerializer<AdToDisplayDTO> {
  @override
  final Iterable<Type> types = const [AdToDisplayDTO, _$AdToDisplayDTO];

  @override
  final String wireName = r'AdToDisplayDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdToDisplayDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(AdContentType),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdToDisplayDTO object, {
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
    required AdToDisplayDTOBuilder result,
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
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdContentType),
          ) as AdContentType;
          result.contentType = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdToDisplayDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdToDisplayDTOBuilder();
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
