//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license.dart';
import 'package:kubirovacka_api/src/model/license_product_type.dart';
import 'package:kubirovacka_api/src/model/license_payment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_payment_item.g.dart';

/// LicensePaymentItem
///
/// Properties:
/// * [licenseProductType]
/// * [id]
/// * [licenseId]
/// * [license]
/// * [licensePaymentId]
/// * [licensePayment]
@BuiltValue()
abstract class LicensePaymentItem
    implements Built<LicensePaymentItem, LicensePaymentItemBuilder> {
  @BuiltValueField(wireName: r'licenseProductType')
  LicenseProductType get licenseProductType;
  // enum licenseProductTypeEnum {  KubPrem1Year,  KubPrem1Month,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'licenseId')
  String? get licenseId;

  @BuiltValueField(wireName: r'license')
  License? get license;

  @BuiltValueField(wireName: r'licensePaymentId')
  int? get licensePaymentId;

  @BuiltValueField(wireName: r'licensePayment')
  LicensePayment? get licensePayment;

  LicensePaymentItem._();

  factory LicensePaymentItem([void updates(LicensePaymentItemBuilder b)]) =
      _$LicensePaymentItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicensePaymentItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicensePaymentItem> get serializer =>
      _$LicensePaymentItemSerializer();
}

class _$LicensePaymentItemSerializer
    implements PrimitiveSerializer<LicensePaymentItem> {
  @override
  final Iterable<Type> types = const [LicensePaymentItem, _$LicensePaymentItem];

  @override
  final String wireName = r'LicensePaymentItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicensePaymentItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'licenseProductType';
    yield serializers.serialize(
      object.licenseProductType,
      specifiedType: const FullType(LicenseProductType),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseId != null) {
      yield r'licenseId';
      yield serializers.serialize(
        object.licenseId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.license != null) {
      yield r'license';
      yield serializers.serialize(
        object.license,
        specifiedType: const FullType(License),
      );
    }
    if (object.licensePaymentId != null) {
      yield r'licensePaymentId';
      yield serializers.serialize(
        object.licensePaymentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.licensePayment != null) {
      yield r'licensePayment';
      yield serializers.serialize(
        object.licensePayment,
        specifiedType: const FullType(LicensePayment),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicensePaymentItem object, {
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
    required LicensePaymentItemBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'licenseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseId = valueDes;
          break;
        case r'license':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(License),
          ) as License;
          result.license.replace(valueDes);
          break;
        case r'licensePaymentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.licensePaymentId = valueDes;
          break;
        case r'licensePayment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LicensePayment),
          ) as LicensePayment;
          result.licensePayment.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicensePaymentItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicensePaymentItemBuilder();
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
