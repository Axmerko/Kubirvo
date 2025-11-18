//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/session_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/currency.dart';
import 'package:kubirovacka_api/src/model/license_payment_provider.dart';
import 'package:kubirovacka_api/src/model/license_payment_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_payment.g.dart';

/// LicensePayment
///
/// Properties:
/// * [id]
/// * [orderNumber]
/// * [customerId]
/// * [companyPurchase]
/// * [provider]
/// * [orderedAt]
/// * [currency]
/// * [state]
/// * [customer]
/// * [companyName]
/// * [companyCity]
/// * [companyStreetAndNumber]
/// * [companyZipCode]
/// * [companyCountry]
/// * [vatNum]
/// * [taxId]
/// * [purchaseId]
/// * [paidAt]
/// * [licensePaymentItems]
/// * [invoiceGenerated]
/// * [invoiceSent]
@BuiltValue()
abstract class LicensePayment
    implements Built<LicensePayment, LicensePaymentBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'orderNumber')
  String get orderNumber;

  @BuiltValueField(wireName: r'customerId')
  String get customerId;

  @BuiltValueField(wireName: r'companyPurchase')
  bool get companyPurchase;

  @BuiltValueField(wireName: r'provider')
  LicensePaymentProvider get provider;
  // enum providerEnum {  GoPay,  GooglePlay,  AppStore,  };

  @BuiltValueField(wireName: r'orderedAt')
  DateTime get orderedAt;

  @BuiltValueField(wireName: r'currency')
  Currency get currency;
  // enum currencyEnum {  CZK,  EUR,  PLN,  HUF,  USD,  GBP,  BGN,  RON,  };

  @BuiltValueField(wireName: r'state')
  SessionState get state;
  // enum stateEnum {  CREATED,  PAYMENT_METHOD_CHOSEN,  PAID,  AUTHORIZED,  CANCELED,  TIMEOUTED,  REFUNDED,  PARTIALLY_REFUNDED,  };

  @BuiltValueField(wireName: r'customer')
  User? get customer;

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

  @BuiltValueField(wireName: r'purchaseId')
  String? get purchaseId;

  @BuiltValueField(wireName: r'paidAt')
  DateTime? get paidAt;

  @BuiltValueField(wireName: r'licensePaymentItems')
  BuiltList<LicensePaymentItem>? get licensePaymentItems;

  @BuiltValueField(wireName: r'invoiceGenerated')
  bool? get invoiceGenerated;

  @BuiltValueField(wireName: r'invoiceSent')
  bool? get invoiceSent;

  LicensePayment._();

  factory LicensePayment([void updates(LicensePaymentBuilder b)]) =
      _$LicensePayment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicensePaymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicensePayment> get serializer =>
      _$LicensePaymentSerializer();
}

class _$LicensePaymentSerializer
    implements PrimitiveSerializer<LicensePayment> {
  @override
  final Iterable<Type> types = const [LicensePayment, _$LicensePayment];

  @override
  final String wireName = r'LicensePayment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicensePayment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'orderNumber';
    yield serializers.serialize(
      object.orderNumber,
      specifiedType: const FullType(String),
    );
    yield r'customerId';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(String),
    );
    yield r'companyPurchase';
    yield serializers.serialize(
      object.companyPurchase,
      specifiedType: const FullType(bool),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(LicensePaymentProvider),
    );
    yield r'orderedAt';
    yield serializers.serialize(
      object.orderedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(Currency),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(SessionState),
    );
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(User),
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
    if (object.purchaseId != null) {
      yield r'purchaseId';
      yield serializers.serialize(
        object.purchaseId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paidAt != null) {
      yield r'paidAt';
      yield serializers.serialize(
        object.paidAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.licensePaymentItems != null) {
      yield r'licensePaymentItems';
      yield serializers.serialize(
        object.licensePaymentItems,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(LicensePaymentItem)]),
      );
    }
    if (object.invoiceGenerated != null) {
      yield r'invoiceGenerated';
      yield serializers.serialize(
        object.invoiceGenerated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.invoiceSent != null) {
      yield r'invoiceSent';
      yield serializers.serialize(
        object.invoiceSent,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicensePayment object, {
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
    required LicensePaymentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'companyPurchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.companyPurchase = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LicensePaymentProvider),
          ) as LicensePaymentProvider;
          result.provider = valueDes;
          break;
        case r'orderedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.orderedAt = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Currency),
          ) as Currency;
          result.currency = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SessionState),
          ) as SessionState;
          result.state = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.customer.replace(valueDes);
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
        case r'purchaseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.purchaseId = valueDes;
          break;
        case r'paidAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paidAt = valueDes;
          break;
        case r'licensePaymentItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LicensePaymentItem)]),
          ) as BuiltList<LicensePaymentItem>?;
          if (valueDes == null) continue;
          result.licensePaymentItems.replace(valueDes);
          break;
        case r'invoiceGenerated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invoiceGenerated = valueDes;
          break;
        case r'invoiceSent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invoiceSent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicensePayment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicensePaymentBuilder();
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
