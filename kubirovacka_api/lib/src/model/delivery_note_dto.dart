//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_report_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/company_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_note_dto.g.dart';

/// DeliveryNoteDTO
///
/// Properties:
/// * [docNumber]
/// * [supplier]
/// * [customer]
/// * [dateOfIssue]
/// * [dateOfDelivery]
/// * [bankAccount]
/// * [variableSymbol]
/// * [order]
/// * [worker]
/// * [shippingAndDelivery]
/// * [condition]
/// * [note]
/// * [priceSubtotal]
/// * [priceTax]
/// * [priceShipping]
/// * [priceTotal]
/// * [totalVolume]
/// * [otherCustomer]
/// * [otherCustomerName]
/// * [otherCustomerDate]
/// * [otherCustomerTime]
/// * [otherSupplier]
/// * [otherSupplierContact]
/// * [otherSupplierEmail]
/// * [otherSupplierPhone]
/// * [woodLogsIds]
/// * [woodLogs]
/// * [m3PerLog]
@BuiltValue()
abstract class DeliveryNoteDTO
    implements Built<DeliveryNoteDTO, DeliveryNoteDTOBuilder> {
  @BuiltValueField(wireName: r'docNumber')
  String? get docNumber;

  @BuiltValueField(wireName: r'supplier')
  CompanyDTO? get supplier;

  @BuiltValueField(wireName: r'customer')
  CompanyDTO? get customer;

  @BuiltValueField(wireName: r'dateOfIssue')
  DateTime? get dateOfIssue;

  @BuiltValueField(wireName: r'dateOfDelivery')
  DateTime? get dateOfDelivery;

  @BuiltValueField(wireName: r'bankAccount')
  String? get bankAccount;

  @BuiltValueField(wireName: r'variableSymbol')
  int? get variableSymbol;

  @BuiltValueField(wireName: r'order')
  String? get order;

  @BuiltValueField(wireName: r'worker')
  String? get worker;

  @BuiltValueField(wireName: r'shippingAndDelivery')
  String? get shippingAndDelivery;

  @BuiltValueField(wireName: r'condition')
  String? get condition;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'priceSubtotal')
  double? get priceSubtotal;

  @BuiltValueField(wireName: r'priceTax')
  double? get priceTax;

  @BuiltValueField(wireName: r'priceShipping')
  double? get priceShipping;

  @BuiltValueField(wireName: r'priceTotal')
  double? get priceTotal;

  @BuiltValueField(wireName: r'totalVolume')
  double? get totalVolume;

  @BuiltValueField(wireName: r'otherCustomer')
  String? get otherCustomer;

  @BuiltValueField(wireName: r'otherCustomerName')
  String? get otherCustomerName;

  @BuiltValueField(wireName: r'otherCustomerDate')
  DateTime? get otherCustomerDate;

  @BuiltValueField(wireName: r'otherCustomerTime')
  String? get otherCustomerTime;

  @BuiltValueField(wireName: r'otherSupplier')
  String? get otherSupplier;

  @BuiltValueField(wireName: r'otherSupplierContact')
  String? get otherSupplierContact;

  @BuiltValueField(wireName: r'otherSupplierEmail')
  String? get otherSupplierEmail;

  @BuiltValueField(wireName: r'otherSupplierPhone')
  String? get otherSupplierPhone;

  @BuiltValueField(wireName: r'woodLogsIds')
  BuiltList<String>? get woodLogsIds;

  @BuiltValueField(wireName: r'woodLogs')
  BuiltList<WoodLogReportDTO>? get woodLogs;

  @BuiltValueField(wireName: r'm3PerLog')
  double? get m3PerLog;

  DeliveryNoteDTO._();

  factory DeliveryNoteDTO([void updates(DeliveryNoteDTOBuilder b)]) =
      _$DeliveryNoteDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryNoteDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryNoteDTO> get serializer =>
      _$DeliveryNoteDTOSerializer();
}

class _$DeliveryNoteDTOSerializer
    implements PrimitiveSerializer<DeliveryNoteDTO> {
  @override
  final Iterable<Type> types = const [DeliveryNoteDTO, _$DeliveryNoteDTO];

  @override
  final String wireName = r'DeliveryNoteDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryNoteDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.docNumber != null) {
      yield r'docNumber';
      yield serializers.serialize(
        object.docNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplier != null) {
      yield r'supplier';
      yield serializers.serialize(
        object.supplier,
        specifiedType: const FullType(CompanyDTO),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(CompanyDTO),
      );
    }
    if (object.dateOfIssue != null) {
      yield r'dateOfIssue';
      yield serializers.serialize(
        object.dateOfIssue,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.dateOfDelivery != null) {
      yield r'dateOfDelivery';
      yield serializers.serialize(
        object.dateOfDelivery,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.bankAccount != null) {
      yield r'bankAccount';
      yield serializers.serialize(
        object.bankAccount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.variableSymbol != null) {
      yield r'variableSymbol';
      yield serializers.serialize(
        object.variableSymbol,
        specifiedType: const FullType(int),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.worker != null) {
      yield r'worker';
      yield serializers.serialize(
        object.worker,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shippingAndDelivery != null) {
      yield r'shippingAndDelivery';
      yield serializers.serialize(
        object.shippingAndDelivery,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceSubtotal != null) {
      yield r'priceSubtotal';
      yield serializers.serialize(
        object.priceSubtotal,
        specifiedType: const FullType(double),
      );
    }
    if (object.priceTax != null) {
      yield r'priceTax';
      yield serializers.serialize(
        object.priceTax,
        specifiedType: const FullType(double),
      );
    }
    if (object.priceShipping != null) {
      yield r'priceShipping';
      yield serializers.serialize(
        object.priceShipping,
        specifiedType: const FullType(double),
      );
    }
    if (object.priceTotal != null) {
      yield r'priceTotal';
      yield serializers.serialize(
        object.priceTotal,
        specifiedType: const FullType(double),
      );
    }
    if (object.totalVolume != null) {
      yield r'totalVolume';
      yield serializers.serialize(
        object.totalVolume,
        specifiedType: const FullType(double),
      );
    }
    if (object.otherCustomer != null) {
      yield r'otherCustomer';
      yield serializers.serialize(
        object.otherCustomer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherCustomerName != null) {
      yield r'otherCustomerName';
      yield serializers.serialize(
        object.otherCustomerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherCustomerDate != null) {
      yield r'otherCustomerDate';
      yield serializers.serialize(
        object.otherCustomerDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.otherCustomerTime != null) {
      yield r'otherCustomerTime';
      yield serializers.serialize(
        object.otherCustomerTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherSupplier != null) {
      yield r'otherSupplier';
      yield serializers.serialize(
        object.otherSupplier,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherSupplierContact != null) {
      yield r'otherSupplierContact';
      yield serializers.serialize(
        object.otherSupplierContact,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherSupplierEmail != null) {
      yield r'otherSupplierEmail';
      yield serializers.serialize(
        object.otherSupplierEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otherSupplierPhone != null) {
      yield r'otherSupplierPhone';
      yield serializers.serialize(
        object.otherSupplierPhone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.woodLogsIds != null) {
      yield r'woodLogsIds';
      yield serializers.serialize(
        object.woodLogsIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.woodLogs != null) {
      yield r'woodLogs';
      yield serializers.serialize(
        object.woodLogs,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogReportDTO)]),
      );
    }
    if (object.m3PerLog != null) {
      yield r'm3PerLog';
      yield serializers.serialize(
        object.m3PerLog,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryNoteDTO object, {
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
    required DeliveryNoteDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'docNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.docNumber = valueDes;
          break;
        case r'supplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompanyDTO),
          ) as CompanyDTO;
          result.supplier.replace(valueDes);
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompanyDTO),
          ) as CompanyDTO;
          result.customer.replace(valueDes);
          break;
        case r'dateOfIssue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dateOfIssue = valueDes;
          break;
        case r'dateOfDelivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dateOfDelivery = valueDes;
          break;
        case r'bankAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankAccount = valueDes;
          break;
        case r'variableSymbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.variableSymbol = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'worker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.worker = valueDes;
          break;
        case r'shippingAndDelivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shippingAndDelivery = valueDes;
          break;
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.condition = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'priceSubtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.priceSubtotal = valueDes;
          break;
        case r'priceTax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.priceTax = valueDes;
          break;
        case r'priceShipping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.priceShipping = valueDes;
          break;
        case r'priceTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.priceTotal = valueDes;
          break;
        case r'totalVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalVolume = valueDes;
          break;
        case r'otherCustomer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherCustomer = valueDes;
          break;
        case r'otherCustomerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherCustomerName = valueDes;
          break;
        case r'otherCustomerDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.otherCustomerDate = valueDes;
          break;
        case r'otherCustomerTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherCustomerTime = valueDes;
          break;
        case r'otherSupplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherSupplier = valueDes;
          break;
        case r'otherSupplierContact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherSupplierContact = valueDes;
          break;
        case r'otherSupplierEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherSupplierEmail = valueDes;
          break;
        case r'otherSupplierPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otherSupplierPhone = valueDes;
          break;
        case r'woodLogsIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.woodLogsIds.replace(valueDes);
          break;
        case r'woodLogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(WoodLogReportDTO)]),
          ) as BuiltList<WoodLogReportDTO>?;
          if (valueDes == null) continue;
          result.woodLogs.replace(valueDes);
          break;
        case r'm3PerLog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.m3PerLog = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryNoteDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryNoteDTOBuilder();
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
