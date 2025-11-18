//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/target.dart';
import 'package:kubirovacka_api/src/model/eet_code.dart';
import 'package:kubirovacka_api/src/model/order_item.dart';
import 'package:kubirovacka_api/src/model/session_state.dart';
import 'package:kubirovacka_api/src/model/payment_instrument.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/recurrence.dart';
import 'package:kubirovacka_api/src/model/additional_param.dart';
import 'package:kubirovacka_api/src/model/payer.dart';
import 'package:kubirovacka_api/src/model/session_sub_state.dart';
import 'package:kubirovacka_api/src/model/currency.dart';
import 'package:kubirovacka_api/src/model/pre_authorization.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment.g.dart';

/// Payment
///
/// Properties:
/// * [id]
/// * [parentId]
/// * [orderNumber]
/// * [state]
/// * [subState]
/// * [paymentInstrument]
/// * [amount]
/// * [currency]
/// * [payer]
/// * [target]
/// * [recurrence]
/// * [preAuthorization]
/// * [additionalParams]
/// * [lang]
/// * [gwUrl]
/// * [eetCode]
/// * [items]
/// * [error]
@BuiltValue()
abstract class Payment implements Built<Payment, PaymentBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'parentId')
  int? get parentId;

  @BuiltValueField(wireName: r'orderNumber')
  String? get orderNumber;

  @BuiltValueField(wireName: r'state')
  SessionState? get state;
  // enum stateEnum {  CREATED,  PAYMENT_METHOD_CHOSEN,  PAID,  AUTHORIZED,  CANCELED,  TIMEOUTED,  REFUNDED,  PARTIALLY_REFUNDED,  };

  @BuiltValueField(wireName: r'subState')
  SessionSubState? get subState;
  // enum subStateEnum {  _101,  _102,  _3001,  _3002,  _3003,  _5001,  _5002,  _5003,  _5004,  _5005,  _5006,  _5007,  _5008,  _5009,  _5010,  _5011,  _5012,  _5013,  _5014,  _5015,  _5016,  _5017,  _5018,  _5019,  _5020,  _5021,  _5022,  _5023,  _5024,  _5025,  _5026,  _5027,  _5028,  _5029,  _5030,  _5031,  _5033,  _5035,  _5036,  _5037,  _5038,  _5039,  _5040,  _5041,  _5042,  _5043,  _5044,  _5045,  _5046,  _5047,  _5048,  _5049,  _5050,  _6001,  _6002,  _6003,  _6004,  _6005,  _6501,  _6502,  _6504,  };

  @BuiltValueField(wireName: r'paymentInstrument')
  PaymentInstrument? get paymentInstrument;
  // enum paymentInstrumentEnum {  PAYMENT_CARD,  BANK_ACCOUNT,  PRSMS,  MPAYMENT,  COUPON,  PAYSAFECARD,  SUPERCASH,  GOPAY,  PAYPAL,  BITCOIN,  MASTERPASS,  ACCOUNT,  GPAY,  APPLE_PAY,  CLICK_TO_PAY,  UNKNOWN,  };

  @BuiltValueField(wireName: r'amount')
  int? get amount;

  @BuiltValueField(wireName: r'currency')
  Currency? get currency;
  // enum currencyEnum {  CZK,  EUR,  PLN,  HUF,  USD,  GBP,  BGN,  RON,  };

  @BuiltValueField(wireName: r'payer')
  Payer? get payer;

  @BuiltValueField(wireName: r'target')
  Target? get target;

  @BuiltValueField(wireName: r'recurrence')
  Recurrence? get recurrence;

  @BuiltValueField(wireName: r'preAuthorization')
  PreAuthorization? get preAuthorization;

  @BuiltValueField(wireName: r'additionalParams')
  BuiltList<AdditionalParam>? get additionalParams;

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'gwUrl')
  String? get gwUrl;

  @BuiltValueField(wireName: r'eetCode')
  EETCode? get eetCode;

  @BuiltValueField(wireName: r'items')
  BuiltList<OrderItem>? get items;

  @BuiltValueField(wireName: r'error')
  bool? get error;

  Payment._();

  factory Payment([void updates(PaymentBuilder b)]) = _$Payment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Payment> get serializer => _$PaymentSerializer();
}

class _$PaymentSerializer implements PrimitiveSerializer<Payment> {
  @override
  final Iterable<Type> types = const [Payment, _$Payment];

  @override
  final String wireName = r'Payment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Payment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.orderNumber != null) {
      yield r'orderNumber';
      yield serializers.serialize(
        object.orderNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(SessionState),
      );
    }
    if (object.subState != null) {
      yield r'subState';
      yield serializers.serialize(
        object.subState,
        specifiedType: const FullType(SessionSubState),
      );
    }
    if (object.paymentInstrument != null) {
      yield r'paymentInstrument';
      yield serializers.serialize(
        object.paymentInstrument,
        specifiedType: const FullType(PaymentInstrument),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(int),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(Currency),
      );
    }
    if (object.payer != null) {
      yield r'payer';
      yield serializers.serialize(
        object.payer,
        specifiedType: const FullType(Payer),
      );
    }
    if (object.target != null) {
      yield r'target';
      yield serializers.serialize(
        object.target,
        specifiedType: const FullType(Target),
      );
    }
    if (object.recurrence != null) {
      yield r'recurrence';
      yield serializers.serialize(
        object.recurrence,
        specifiedType: const FullType(Recurrence),
      );
    }
    if (object.preAuthorization != null) {
      yield r'preAuthorization';
      yield serializers.serialize(
        object.preAuthorization,
        specifiedType: const FullType(PreAuthorization),
      );
    }
    if (object.additionalParams != null) {
      yield r'additionalParams';
      yield serializers.serialize(
        object.additionalParams,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(AdditionalParam)]),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gwUrl != null) {
      yield r'gwUrl';
      yield serializers.serialize(
        object.gwUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eetCode != null) {
      yield r'eetCode';
      yield serializers.serialize(
        object.eetCode,
        specifiedType: const FullType(EETCode),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(OrderItem)]),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Payment object, {
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
    required PaymentBuilder result,
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
        case r'parentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.parentId = valueDes;
          break;
        case r'orderNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNumber = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SessionState),
          ) as SessionState;
          result.state = valueDes;
          break;
        case r'subState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SessionSubState),
          ) as SessionSubState;
          result.subState = valueDes;
          break;
        case r'paymentInstrument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInstrument),
          ) as PaymentInstrument;
          result.paymentInstrument = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Currency),
          ) as Currency;
          result.currency = valueDes;
          break;
        case r'payer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Payer),
          ) as Payer;
          result.payer.replace(valueDes);
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Target),
          ) as Target;
          result.target.replace(valueDes);
          break;
        case r'recurrence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Recurrence),
          ) as Recurrence;
          result.recurrence.replace(valueDes);
          break;
        case r'preAuthorization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreAuthorization),
          ) as PreAuthorization;
          result.preAuthorization.replace(valueDes);
          break;
        case r'additionalParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(AdditionalParam)]),
          ) as BuiltList<AdditionalParam>?;
          if (valueDes == null) continue;
          result.additionalParams.replace(valueDes);
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'gwUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gwUrl = valueDes;
          break;
        case r'eetCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EETCode),
          ) as EETCode;
          result.eetCode.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(OrderItem)]),
          ) as BuiltList<OrderItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Payment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentBuilder();
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
