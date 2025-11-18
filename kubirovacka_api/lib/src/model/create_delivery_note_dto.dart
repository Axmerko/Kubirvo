//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/create_delivery_note_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_delivery_note_dto.g.dart';

/// CreateDeliveryNoteDTO
///
/// Properties:
/// * [deliveryNoteNumber]
/// * [guid]
/// * [licensePlate]
/// * [dateOfDeparture]
/// * [reportNumber]
/// * [customerId]
/// * [carrierId]
/// * [supplierId]
/// * [deliveryNoteItemDtos]
@BuiltValue()
abstract class CreateDeliveryNoteDTO
    implements Built<CreateDeliveryNoteDTO, CreateDeliveryNoteDTOBuilder> {
  @BuiltValueField(wireName: r'deliveryNoteNumber')
  String get deliveryNoteNumber;

  @BuiltValueField(wireName: r'guid')
  String? get guid;

  @BuiltValueField(wireName: r'licensePlate')
  String? get licensePlate;

  @BuiltValueField(wireName: r'dateOfDeparture')
  DateTime? get dateOfDeparture;

  @BuiltValueField(wireName: r'reportNumber')
  String? get reportNumber;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'carrierId')
  String? get carrierId;

  @BuiltValueField(wireName: r'supplierId')
  String? get supplierId;

  @BuiltValueField(wireName: r'deliveryNoteItemDtos')
  BuiltList<CreateDeliveryNoteItemDTO>? get deliveryNoteItemDtos;

  CreateDeliveryNoteDTO._();

  factory CreateDeliveryNoteDTO(
      [void updates(CreateDeliveryNoteDTOBuilder b)]) = _$CreateDeliveryNoteDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDeliveryNoteDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDeliveryNoteDTO> get serializer =>
      _$CreateDeliveryNoteDTOSerializer();
}

class _$CreateDeliveryNoteDTOSerializer
    implements PrimitiveSerializer<CreateDeliveryNoteDTO> {
  @override
  final Iterable<Type> types = const [
    CreateDeliveryNoteDTO,
    _$CreateDeliveryNoteDTO
  ];

  @override
  final String wireName = r'CreateDeliveryNoteDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDeliveryNoteDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deliveryNoteNumber';
    yield serializers.serialize(
      object.deliveryNoteNumber,
      specifiedType: const FullType(String),
    );
    if (object.guid != null) {
      yield r'guid';
      yield serializers.serialize(
        object.guid,
        specifiedType: const FullType(String),
      );
    }
    if (object.licensePlate != null) {
      yield r'licensePlate';
      yield serializers.serialize(
        object.licensePlate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateOfDeparture != null) {
      yield r'dateOfDeparture';
      yield serializers.serialize(
        object.dateOfDeparture,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.reportNumber != null) {
      yield r'reportNumber';
      yield serializers.serialize(
        object.reportNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.carrierId != null) {
      yield r'carrierId';
      yield serializers.serialize(
        object.carrierId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierId != null) {
      yield r'supplierId';
      yield serializers.serialize(
        object.supplierId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliveryNoteItemDtos != null) {
      yield r'deliveryNoteItemDtos';
      yield serializers.serialize(
        object.deliveryNoteItemDtos,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CreateDeliveryNoteItemDTO)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDeliveryNoteDTO object, {
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
    required CreateDeliveryNoteDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deliveryNoteNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryNoteNumber = valueDes;
          break;
        case r'guid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guid = valueDes;
          break;
        case r'licensePlate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licensePlate = valueDes;
          break;
        case r'dateOfDeparture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.dateOfDeparture = valueDes;
          break;
        case r'reportNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportNumber = valueDes;
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'carrierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.carrierId = valueDes;
          break;
        case r'supplierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierId = valueDes;
          break;
        case r'deliveryNoteItemDtos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CreateDeliveryNoteItemDTO)]),
          ) as BuiltList<CreateDeliveryNoteItemDTO>?;
          if (valueDes == null) continue;
          result.deliveryNoteItemDtos.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDeliveryNoteDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDeliveryNoteDTOBuilder();
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
