//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_delivery_note_photo_dto.g.dart';

/// GetDeliveryNotePhotoDTO
///
/// Properties:
/// * [id]
/// * [fileName]
/// * [fileSize]
/// * [fileMimeType]
/// * [url]
@BuiltValue()
abstract class GetDeliveryNotePhotoDTO
    implements Built<GetDeliveryNotePhotoDTO, GetDeliveryNotePhotoDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'fileSize')
  int? get fileSize;

  @BuiltValueField(wireName: r'fileMimeType')
  String? get fileMimeType;

  @BuiltValueField(wireName: r'url')
  String? get url;

  GetDeliveryNotePhotoDTO._();

  factory GetDeliveryNotePhotoDTO(
          [void updates(GetDeliveryNotePhotoDTOBuilder b)]) =
      _$GetDeliveryNotePhotoDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDeliveryNotePhotoDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDeliveryNotePhotoDTO> get serializer =>
      _$GetDeliveryNotePhotoDTOSerializer();
}

class _$GetDeliveryNotePhotoDTOSerializer
    implements PrimitiveSerializer<GetDeliveryNotePhotoDTO> {
  @override
  final Iterable<Type> types = const [
    GetDeliveryNotePhotoDTO,
    _$GetDeliveryNotePhotoDTO
  ];

  @override
  final String wireName = r'GetDeliveryNotePhotoDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDeliveryNotePhotoDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fileSize != null) {
      yield r'fileSize';
      yield serializers.serialize(
        object.fileSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.fileMimeType != null) {
      yield r'fileMimeType';
      yield serializers.serialize(
        object.fileMimeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDeliveryNotePhotoDTO object, {
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
    required GetDeliveryNotePhotoDTOBuilder result,
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
        case r'fileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'fileSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fileSize = valueDes;
          break;
        case r'fileMimeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileMimeType = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDeliveryNotePhotoDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeliveryNotePhotoDTOBuilder();
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
