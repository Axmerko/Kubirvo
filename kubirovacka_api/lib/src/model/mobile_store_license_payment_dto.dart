//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license_payment_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_store_license_payment_dto.g.dart';

/// MobileStoreLicensePaymentDTO
///
/// Properties:
/// * [orderItems]
/// * [purchaseId]
/// * [companyPurchase]
/// * [companyName]
/// * [companyCity]
/// * [companyStreetAndNumber]
/// * [companyZipCode]
/// * [companyCountry]
/// * [vatNum]
/// * [taxId]
@BuiltValue()
abstract class MobileStoreLicensePaymentDTO
    implements
        Built<MobileStoreLicensePaymentDTO,
            MobileStoreLicensePaymentDTOBuilder> {
  @BuiltValueField(wireName: r'orderItems')
  BuiltList<LicensePaymentItemDTO> get orderItems;

  @BuiltValueField(wireName: r'purchaseId')
  String get purchaseId;

  @BuiltValueField(wireName: r'companyPurchase')
  bool? get companyPurchase;

  @BuiltValueField(wireName: r'companyName')
  String? get companyName;

  @BuiltValueField(wireName: r'companyCity')
  String? get companyCity;

  @BuiltValueField(wireName: r'companyStreetAndNumber')
  String? get companyStreetAndNumber;

  @BuiltValueField(wireName: r'companyZipCode')
  String? get companyZipCode;

  @BuiltValueField(wireName: r'companyCountry')
  String? get companyCountry;

  @BuiltValueField(wireName: r'vatNum')
  String? get vatNum;

  @BuiltValueField(wireName: r'taxId')
  String? get taxId;

  MobileStoreLicensePaymentDTO._();

  factory MobileStoreLicensePaymentDTO(
          [void updates(MobileStoreLicensePaymentDTOBuilder b)]) =
      _$MobileStoreLicensePaymentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileStoreLicensePaymentDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileStoreLicensePaymentDTO> get serializer =>
      _$MobileStoreLicensePaymentDTOSerializer();
}

class _$MobileStoreLicensePaymentDTOSerializer
    implements PrimitiveSerializer<MobileStoreLicensePaymentDTO> {
  @override
  final Iterable<Type> types = const [
    MobileStoreLicensePaymentDTO,
    _$MobileStoreLicensePaymentDTO
  ];

  @override
  final String wireName = r'MobileStoreLicensePaymentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileStoreLicensePaymentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderItems';
    yield serializers.serialize(
      object.orderItems,
      specifiedType:
          const FullType(BuiltList, [FullType(LicensePaymentItemDTO)]),
    );
    yield r'purchaseId';
    yield serializers.serialize(
      object.purchaseId,
      specifiedType: const FullType(String),
    );
    if (object.companyPurchase != null) {
      yield r'companyPurchase';
      yield serializers.serialize(
        object.companyPurchase,
        specifiedType: const FullType(bool),
      );
    }
    if (object.companyName != null) {
      yield r'companyName';
      yield serializers.serialize(
        object.companyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.companyCity != null) {
      yield r'companyCity';
      yield serializers.serialize(
        object.companyCity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.companyStreetAndNumber != null) {
      yield r'companyStreetAndNumber';
      yield serializers.serialize(
        object.companyStreetAndNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.companyZipCode != null) {
      yield r'companyZipCode';
      yield serializers.serialize(
        object.companyZipCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.companyCountry != null) {
      yield r'companyCountry';
      yield serializers.serialize(
        object.companyCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vatNum != null) {
      yield r'vatNum';
      yield serializers.serialize(
        object.vatNum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.taxId != null) {
      yield r'taxId';
      yield serializers.serialize(
        object.taxId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileStoreLicensePaymentDTO object, {
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
    required MobileStoreLicensePaymentDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LicensePaymentItemDTO)]),
          ) as BuiltList<LicensePaymentItemDTO>;
          result.orderItems.replace(valueDes);
          break;
        case r'purchaseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.purchaseId = valueDes;
          break;
        case r'companyPurchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.companyPurchase = valueDes;
          break;
        case r'companyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyName = valueDes;
          break;
        case r'companyCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyCity = valueDes;
          break;
        case r'companyStreetAndNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyStreetAndNumber = valueDes;
          break;
        case r'companyZipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyZipCode = valueDes;
          break;
        case r'companyCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyCountry = valueDes;
          break;
        case r'vatNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.vatNum = valueDes;
          break;
        case r'taxId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.taxId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileStoreLicensePaymentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileStoreLicensePaymentDTOBuilder();
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
