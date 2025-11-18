//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/sortiment_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_delivery_note_item_dto.g.dart';

/// GetDeliveryNoteItemDTO
///
/// Properties:
/// * [sortiment]
/// * [volume]
/// * [departurePlace]
@BuiltValue()
abstract class GetDeliveryNoteItemDTO
    implements Built<GetDeliveryNoteItemDTO, GetDeliveryNoteItemDTOBuilder> {
  @BuiltValueField(wireName: r'sortiment')
  SortimentDTO? get sortiment;

  @BuiltValueField(wireName: r'volume')
  double? get volume;

  @BuiltValueField(wireName: r'departurePlace')
  String? get departurePlace;

  GetDeliveryNoteItemDTO._();

  factory GetDeliveryNoteItemDTO(
          [void updates(GetDeliveryNoteItemDTOBuilder b)]) =
      _$GetDeliveryNoteItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDeliveryNoteItemDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDeliveryNoteItemDTO> get serializer =>
      _$GetDeliveryNoteItemDTOSerializer();
}

class _$GetDeliveryNoteItemDTOSerializer
    implements PrimitiveSerializer<GetDeliveryNoteItemDTO> {
  @override
  final Iterable<Type> types = const [
    GetDeliveryNoteItemDTO,
    _$GetDeliveryNoteItemDTO
  ];

  @override
  final String wireName = r'GetDeliveryNoteItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDeliveryNoteItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sortiment != null) {
      yield r'sortiment';
      yield serializers.serialize(
        object.sortiment,
        specifiedType: const FullType(SortimentDTO),
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
    GetDeliveryNoteItemDTO object, {
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
    required GetDeliveryNoteItemDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sortiment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SortimentDTO),
          ) as SortimentDTO;
          result.sortiment.replace(valueDes);
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
  GetDeliveryNoteItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeliveryNoteItemDTOBuilder();
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
