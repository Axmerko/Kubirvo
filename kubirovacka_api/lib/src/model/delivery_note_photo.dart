//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/delivery_note.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_note_photo.g.dart';

/// DeliveryNotePhoto
///
/// Properties:
/// * [id]
/// * [fileName]
/// * [fileSize]
/// * [fileMimeType]
/// * [deliveryNoteId]
/// * [deliveryNote]
@BuiltValue()
abstract class DeliveryNotePhoto
    implements Built<DeliveryNotePhoto, DeliveryNotePhotoBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'fileSize')
  int? get fileSize;

  @BuiltValueField(wireName: r'fileMimeType')
  String? get fileMimeType;

  @BuiltValueField(wireName: r'deliveryNoteId')
  String? get deliveryNoteId;

  @BuiltValueField(wireName: r'deliveryNote')
  DeliveryNote? get deliveryNote;

  DeliveryNotePhoto._();

  factory DeliveryNotePhoto([void updates(DeliveryNotePhotoBuilder b)]) =
      _$DeliveryNotePhoto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryNotePhotoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryNotePhoto> get serializer =>
      _$DeliveryNotePhotoSerializer();
}

class _$DeliveryNotePhotoSerializer
    implements PrimitiveSerializer<DeliveryNotePhoto> {
  @override
  final Iterable<Type> types = const [DeliveryNotePhoto, _$DeliveryNotePhoto];

  @override
  final String wireName = r'DeliveryNotePhoto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryNotePhoto object, {
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
    if (object.deliveryNoteId != null) {
      yield r'deliveryNoteId';
      yield serializers.serialize(
        object.deliveryNoteId,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryNote != null) {
      yield r'deliveryNote';
      yield serializers.serialize(
        object.deliveryNote,
        specifiedType: const FullType(DeliveryNote),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryNotePhoto object, {
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
    required DeliveryNotePhotoBuilder result,
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
        case r'deliveryNoteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryNoteId = valueDes;
          break;
        case r'deliveryNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryNote),
          ) as DeliveryNote;
          result.deliveryNote.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryNotePhoto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryNotePhotoBuilder();
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
