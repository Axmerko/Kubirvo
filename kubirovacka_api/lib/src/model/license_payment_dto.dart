//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license_payment_item_dto.dart';
import 'package:kubirovacka_api/src/model/payment_instrument.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/currency.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_payment_dto.g.dart';

/// LicensePaymentDTO
///
/// Properties:
/// * [orderItems]
/// * [companyPurchase]
/// * [id]
/// * [orderNumber]
/// * [currency]
/// * [lang]
/// * [paymentInstrument]
/// * [companyName]
/// * [companyCity]
/// * [companyStreetAndNumber]
/// * [companyZipCode]
/// * [companyCountry]
/// * [vatNum]
/// * [taxId]
/// * [orderedAt]
/// * [paidAt]
/// * [customerName]
/// * [customerEmail]
@BuiltValue()
abstract class LicensePaymentDTO
    implements Built<LicensePaymentDTO, LicensePaymentDTOBuilder> {
  @BuiltValueField(wireName: r'orderItems')
  BuiltList<LicensePaymentItemDTO> get orderItems;

  @BuiltValueField(wireName: r'companyPurchase')
  bool get companyPurchase;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'orderNumber')
  String? get orderNumber;

  @BuiltValueField(wireName: r'currency')
  Currency? get currency;
  // enum currencyEnum {  CZK,  EUR,  PLN,  HUF,  USD,  GBP,  BGN,  RON,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'paymentInstrument')
  PaymentInstrument? get paymentInstrument;
  // enum paymentInstrumentEnum {  PAYMENT_CARD,  BANK_ACCOUNT,  PRSMS,  MPAYMENT,  COUPON,  PAYSAFECARD,  SUPERCASH,  GOPAY,  PAYPAL,  BITCOIN,  MASTERPASS,  ACCOUNT,  GPAY,  APPLE_PAY,  CLICK_TO_PAY,  UNKNOWN,  };

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

  @BuiltValueField(wireName: r'orderedAt')
  DateTime? get orderedAt;

  @BuiltValueField(wireName: r'paidAt')
  DateTime? get paidAt;

  @BuiltValueField(wireName: r'customerName')
  String? get customerName;

  @BuiltValueField(wireName: r'customerEmail')
  String? get customerEmail;

  LicensePaymentDTO._();

  factory LicensePaymentDTO([void updates(LicensePaymentDTOBuilder b)]) =
      _$LicensePaymentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicensePaymentDTOBuilder b) => b
    ..companyPurchase = false
    ..lang = 'CS';

  @BuiltValueSerializer(custom: true)
  static Serializer<LicensePaymentDTO> get serializer =>
      _$LicensePaymentDTOSerializer();
}

class _$LicensePaymentDTOSerializer
    implements PrimitiveSerializer<LicensePaymentDTO> {
  @override
  final Iterable<Type> types = const [LicensePaymentDTO, _$LicensePaymentDTO];

  @override
  final String wireName = r'LicensePaymentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicensePaymentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderItems';
    yield serializers.serialize(
      object.orderItems,
      specifiedType:
          const FullType(BuiltList, [FullType(LicensePaymentItemDTO)]),
    );
    yield r'companyPurchase';
    yield serializers.serialize(
      object.companyPurchase,
      specifiedType: const FullType(bool),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.orderNumber != null) {
      yield r'orderNumber';
      yield serializers.serialize(
        object.orderNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(Currency),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentInstrument != null) {
      yield r'paymentInstrument';
      yield serializers.serialize(
        object.paymentInstrument,
        specifiedType: const FullType(PaymentInstrument),
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
    if (object.orderedAt != null) {
      yield r'orderedAt';
      yield serializers.serialize(
        object.orderedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.paidAt != null) {
      yield r'paidAt';
      yield serializers.serialize(
        object.paidAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.customerName != null) {
      yield r'customerName';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerEmail != null) {
      yield r'customerEmail';
      yield serializers.serialize(
        object.customerEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicensePaymentDTO object, {
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
    required LicensePaymentDTOBuilder result,
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
        case r'companyPurchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.companyPurchase = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'orderNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderNumber = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Currency),
          ) as Currency;
          result.currency = valueDes;
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'paymentInstrument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInstrument),
          ) as PaymentInstrument;
          result.paymentInstrument = valueDes;
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
        case r'orderedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.orderedAt = valueDes;
          break;
        case r'paidAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paidAt = valueDes;
          break;
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'customerEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerEmail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicensePaymentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicensePaymentDTOBuilder();
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
