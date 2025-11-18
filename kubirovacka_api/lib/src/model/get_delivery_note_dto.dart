//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_delivery_note_dto.g.dart';

/// GetDeliveryNoteDTO
///
/// Properties:
/// * [id]
/// * [licensePlate]
/// * [dateOfDeparture]
/// * [reportNumber]
/// * [deliveryNoteNumber]
/// * [ownerGroupGuid]
/// * [ownerUserGuid]
/// * [customerId]
/// * [carrierId]
/// * [supplierId]
/// * [numberOfItems]
/// * [locked]
@BuiltValue()
abstract class GetDeliveryNoteDTO
    implements Built<GetDeliveryNoteDTO, GetDeliveryNoteDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'licensePlate')
  String? get licensePlate;

  @BuiltValueField(wireName: r'dateOfDeparture')
  DateTime? get dateOfDeparture;

  @BuiltValueField(wireName: r'reportNumber')
  String? get reportNumber;

  @BuiltValueField(wireName: r'deliveryNoteNumber')
  String? get deliveryNoteNumber;

  @BuiltValueField(wireName: r'ownerGroupGuid')
  String? get ownerGroupGuid;

  @BuiltValueField(wireName: r'ownerUserGuid')
  String? get ownerUserGuid;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'carrierId')
  String? get carrierId;

  @BuiltValueField(wireName: r'supplierId')
  String? get supplierId;

  @BuiltValueField(wireName: r'numberOfItems')
  int? get numberOfItems;

  @BuiltValueField(wireName: r'locked')
  bool? get locked;

  GetDeliveryNoteDTO._();

  factory GetDeliveryNoteDTO([void updates(GetDeliveryNoteDTOBuilder b)]) =
      _$GetDeliveryNoteDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDeliveryNoteDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDeliveryNoteDTO> get serializer =>
      _$GetDeliveryNoteDTOSerializer();
}

class _$GetDeliveryNoteDTOSerializer
    implements PrimitiveSerializer<GetDeliveryNoteDTO> {
  @override
  final Iterable<Type> types = const [GetDeliveryNoteDTO, _$GetDeliveryNoteDTO];

  @override
  final String wireName = r'GetDeliveryNoteDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDeliveryNoteDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.deliveryNoteNumber != null) {
      yield r'deliveryNoteNumber';
      yield serializers.serialize(
        object.deliveryNoteNumber,
        specifiedType: const FullType.nullable(String),
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
    if (object.numberOfItems != null) {
      yield r'numberOfItems';
      yield serializers.serialize(
        object.numberOfItems,
        specifiedType: const FullType(int),
      );
    }
    if (object.locked != null) {
      yield r'locked';
      yield serializers.serialize(
        object.locked,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDeliveryNoteDTO object, {
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
    required GetDeliveryNoteDTOBuilder result,
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
        case r'deliveryNoteNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryNoteNumber = valueDes;
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
        case r'numberOfItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberOfItems = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDeliveryNoteDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeliveryNoteDTOBuilder();
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
