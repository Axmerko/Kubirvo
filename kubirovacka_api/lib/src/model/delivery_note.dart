//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/delivery_note_item.dart';
import 'package:kubirovacka_api/src/model/delivery_note_photo.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:kubirovacka_api/src/model/company.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_note.g.dart';

/// DeliveryNote
///
/// Properties:
/// * [id]
/// * [createdAt]
/// * [licensePlate]
/// * [dateOfDeparture]
/// * [reportNumber]
/// * [ownerGroupGuid]
/// * [ownerUserGuid]
/// * [customerId]
/// * [carrierId]
/// * [supplierId]
/// * [exported]
/// * [locked]
/// * [deliveryNoteNumber]
/// * [customer]
/// * [carrier]
/// * [supplier]
/// * [ownerGroup]
/// * [ownerUser]
/// * [deliveryNoteItems]
/// * [deliveryNotePhotos]
@BuiltValue()
abstract class DeliveryNote
    implements Built<DeliveryNote, DeliveryNoteBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'licensePlate')
  String? get licensePlate;

  @BuiltValueField(wireName: r'dateOfDeparture')
  DateTime? get dateOfDeparture;

  @BuiltValueField(wireName: r'reportNumber')
  String? get reportNumber;

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

  @BuiltValueField(wireName: r'exported')
  bool? get exported;

  @BuiltValueField(wireName: r'locked')
  bool? get locked;

  @BuiltValueField(wireName: r'deliveryNoteNumber')
  String? get deliveryNoteNumber;

  @BuiltValueField(wireName: r'customer')
  Company? get customer;

  @BuiltValueField(wireName: r'carrier')
  Company? get carrier;

  @BuiltValueField(wireName: r'supplier')
  Company? get supplier;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'ownerUser')
  User? get ownerUser;

  @BuiltValueField(wireName: r'deliveryNoteItems')
  BuiltList<DeliveryNoteItem>? get deliveryNoteItems;

  @BuiltValueField(wireName: r'deliveryNotePhotos')
  BuiltList<DeliveryNotePhoto>? get deliveryNotePhotos;

  DeliveryNote._();

  factory DeliveryNote([void updates(DeliveryNoteBuilder b)]) = _$DeliveryNote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryNoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryNote> get serializer => _$DeliveryNoteSerializer();
}

class _$DeliveryNoteSerializer implements PrimitiveSerializer<DeliveryNote> {
  @override
  final Iterable<Type> types = const [DeliveryNote, _$DeliveryNote];

  @override
  final String wireName = r'DeliveryNote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryNote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
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
    if (object.exported != null) {
      yield r'exported';
      yield serializers.serialize(
        object.exported,
        specifiedType: const FullType(bool),
      );
    }
    if (object.locked != null) {
      yield r'locked';
      yield serializers.serialize(
        object.locked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deliveryNoteNumber != null) {
      yield r'deliveryNoteNumber';
      yield serializers.serialize(
        object.deliveryNoteNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(Company),
      );
    }
    if (object.carrier != null) {
      yield r'carrier';
      yield serializers.serialize(
        object.carrier,
        specifiedType: const FullType(Company),
      );
    }
    if (object.supplier != null) {
      yield r'supplier';
      yield serializers.serialize(
        object.supplier,
        specifiedType: const FullType(Company),
      );
    }
    if (object.ownerGroup != null) {
      yield r'ownerGroup';
      yield serializers.serialize(
        object.ownerGroup,
        specifiedType: const FullType(Group),
      );
    }
    if (object.ownerUser != null) {
      yield r'ownerUser';
      yield serializers.serialize(
        object.ownerUser,
        specifiedType: const FullType(User),
      );
    }
    if (object.deliveryNoteItems != null) {
      yield r'deliveryNoteItems';
      yield serializers.serialize(
        object.deliveryNoteItems,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(DeliveryNoteItem)]),
      );
    }
    if (object.deliveryNotePhotos != null) {
      yield r'deliveryNotePhotos';
      yield serializers.serialize(
        object.deliveryNotePhotos,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(DeliveryNotePhoto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryNote object, {
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
    required DeliveryNoteBuilder result,
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
        case r'exported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exported = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        case r'deliveryNoteNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryNoteNumber = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Company),
          ) as Company;
          result.customer.replace(valueDes);
          break;
        case r'carrier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Company),
          ) as Company;
          result.carrier.replace(valueDes);
          break;
        case r'supplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Company),
          ) as Company;
          result.supplier.replace(valueDes);
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'ownerUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.ownerUser.replace(valueDes);
          break;
        case r'deliveryNoteItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DeliveryNoteItem)]),
          ) as BuiltList<DeliveryNoteItem>?;
          if (valueDes == null) continue;
          result.deliveryNoteItems.replace(valueDes);
          break;
        case r'deliveryNotePhotos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DeliveryNotePhoto)]),
          ) as BuiltList<DeliveryNotePhoto>?;
          if (valueDes == null) continue;
          result.deliveryNotePhotos.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryNote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryNoteBuilder();
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
