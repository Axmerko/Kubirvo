//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license_product_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_payment_item_dto.g.dart';

/// LicensePaymentItemDTO
///
/// Properties:
/// * [licenseProductType]
/// * [licenseId]
@BuiltValue()
abstract class LicensePaymentItemDTO
    implements Built<LicensePaymentItemDTO, LicensePaymentItemDTOBuilder> {
  @BuiltValueField(wireName: r'licenseProductType')
  LicenseProductType get licenseProductType;
  // enum licenseProductTypeEnum {  KubPrem1Year,  KubPrem1Month,  };

  @BuiltValueField(wireName: r'licenseId')
  String? get licenseId;

  LicensePaymentItemDTO._();

  factory LicensePaymentItemDTO(
      [void updates(LicensePaymentItemDTOBuilder b)]) = _$LicensePaymentItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicensePaymentItemDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicensePaymentItemDTO> get serializer =>
      _$LicensePaymentItemDTOSerializer();
}

class _$LicensePaymentItemDTOSerializer
    implements PrimitiveSerializer<LicensePaymentItemDTO> {
  @override
  final Iterable<Type> types = const [
    LicensePaymentItemDTO,
    _$LicensePaymentItemDTO
  ];

  @override
  final String wireName = r'LicensePaymentItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicensePaymentItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'licenseProductType';
    yield serializers.serialize(
      object.licenseProductType,
      specifiedType: const FullType(LicenseProductType),
    );
    if (object.licenseId != null) {
      yield r'licenseId';
      yield serializers.serialize(
        object.licenseId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicensePaymentItemDTO object, {
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
    required LicensePaymentItemDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'licenseProductType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LicenseProductType),
          ) as LicenseProductType;
          result.licenseProductType = valueDes;
          break;
        case r'licenseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicensePaymentItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicensePaymentItemDTOBuilder();
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
