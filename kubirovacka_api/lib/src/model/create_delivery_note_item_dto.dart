//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_delivery_note_item_dto.g.dart';

/// CreateDeliveryNoteItemDTO
///
/// Properties:
/// * [sortimentId]
/// * [volume]
/// * [departurePlace]
@BuiltValue()
abstract class CreateDeliveryNoteItemDTO
    implements
        Built<CreateDeliveryNoteItemDTO, CreateDeliveryNoteItemDTOBuilder> {
  @BuiltValueField(wireName: r'sortimentId')
  String? get sortimentId;

  @BuiltValueField(wireName: r'volume')
  double? get volume;

  @BuiltValueField(wireName: r'departurePlace')
  String? get departurePlace;

  CreateDeliveryNoteItemDTO._();

  factory CreateDeliveryNoteItemDTO(
          [void updates(CreateDeliveryNoteItemDTOBuilder b)]) =
      _$CreateDeliveryNoteItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDeliveryNoteItemDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDeliveryNoteItemDTO> get serializer =>
      _$CreateDeliveryNoteItemDTOSerializer();
}

class _$CreateDeliveryNoteItemDTOSerializer
    implements PrimitiveSerializer<CreateDeliveryNoteItemDTO> {
  @override
  final Iterable<Type> types = const [
    CreateDeliveryNoteItemDTO,
    _$CreateDeliveryNoteItemDTO
  ];

  @override
  final String wireName = r'CreateDeliveryNoteItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDeliveryNoteItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sortimentId != null) {
      yield r'sortimentId';
      yield serializers.serialize(
        object.sortimentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType(double),
      );
    }
    if (object.departurePlace != null) {
      yield r'departurePlace';
      yield serializers.serialize(
        object.departurePlace,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDeliveryNoteItemDTO object, {
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
    required CreateDeliveryNoteItemDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sortimentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortimentId = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.volume = valueDes;
          break;
        case r'departurePlace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.departurePlace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDeliveryNoteItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDeliveryNoteItemDTOBuilder();
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
