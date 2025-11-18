//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_report_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/company_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proof_of_origin_dto.g.dart';

/// ProofOfOriginDTO
///
/// Properties:
/// * [docNumber]
/// * [supplier]
/// * [supplierName]
/// * [supplierCity]
/// * [supplierStreetAndNumber]
/// * [supplierZipCode]
/// * [supplierCountry]
/// * [supplierVatNumber]
/// * [customer]
/// * [customerName]
/// * [customerCity]
/// * [customerStreetAndNumber]
/// * [customerZipCode]
/// * [customerCountry]
/// * [customerVatNumber]
/// * [shipper]
/// * [shipperName]
/// * [shipperCity]
/// * [shipperStreetAndNumber]
/// * [shipperZipCode]
/// * [shipperCountry]
/// * [shipperVatNumber]
/// * [driverName]
/// * [vehicle]
/// * [licensePlate]
/// * [wagonNumber]
/// * [addressFrom]
/// * [addressTo]
/// * [dateOfShipment]
/// * [dateOfLoading]
/// * [brandIdentificationData]
/// * [wood]
/// * [qualitativeClass]
/// * [totalVolumeInPrm]
/// * [totalVolume]
/// * [issuedBy]
/// * [issuedDate]
/// * [issuedTime]
/// * [tookOverBy]
/// * [tookOverDate]
/// * [tookOverTime]
/// * [woodLogsIds]
/// * [woodLogs]
@BuiltValue()
abstract class ProofOfOriginDTO
    implements Built<ProofOfOriginDTO, ProofOfOriginDTOBuilder> {
  @BuiltValueField(wireName: r'docNumber')
  String? get docNumber;

  @BuiltValueField(wireName: r'supplier')
  CompanyDTO? get supplier;

  @BuiltValueField(wireName: r'supplierName')
  String? get supplierName;

  @BuiltValueField(wireName: r'supplierCity')
  String? get supplierCity;

  @BuiltValueField(wireName: r'supplierStreetAndNumber')
  String? get supplierStreetAndNumber;

  @BuiltValueField(wireName: r'supplierZipCode')
  String? get supplierZipCode;

  @BuiltValueField(wireName: r'supplierCountry')
  String? get supplierCountry;

  @BuiltValueField(wireName: r'supplierVatNumber')
  String? get supplierVatNumber;

  @BuiltValueField(wireName: r'customer')
  CompanyDTO? get customer;

  @BuiltValueField(wireName: r'customerName')
  String? get customerName;

  @BuiltValueField(wireName: r'customerCity')
  String? get customerCity;

  @BuiltValueField(wireName: r'customerStreetAndNumber')
  String? get customerStreetAndNumber;

  @BuiltValueField(wireName: r'customerZipCode')
  String? get customerZipCode;

  @BuiltValueField(wireName: r'customerCountry')
  String? get customerCountry;

  @BuiltValueField(wireName: r'customerVatNumber')
  String? get customerVatNumber;

  @BuiltValueField(wireName: r'shipper')
  CompanyDTO? get shipper;

  @BuiltValueField(wireName: r'shipperName')
  String? get shipperName;

  @BuiltValueField(wireName: r'shipperCity')
  String? get shipperCity;

  @BuiltValueField(wireName: r'shipperStreetAndNumber')
  String? get shipperStreetAndNumber;

  @BuiltValueField(wireName: r'shipperZipCode')
  String? get shipperZipCode;

  @BuiltValueField(wireName: r'shipperCountry')
  String? get shipperCountry;

  @BuiltValueField(wireName: r'shipperVatNumber')
  String? get shipperVatNumber;

  @BuiltValueField(wireName: r'driverName')
  String? get driverName;

  @BuiltValueField(wireName: r'vehicle')
  String? get vehicle;

  @BuiltValueField(wireName: r'licensePlate')
  String? get licensePlate;

  @BuiltValueField(wireName: r'wagonNumber')
  String? get wagonNumber;

  @BuiltValueField(wireName: r'addressFrom')
  String? get addressFrom;

  @BuiltValueField(wireName: r'addressTo')
  String? get addressTo;

  @BuiltValueField(wireName: r'dateOfShipment')
  String? get dateOfShipment;

  @BuiltValueField(wireName: r'dateOfLoading')
  String? get dateOfLoading;

  @BuiltValueField(wireName: r'brandIdentificationData')
  String? get brandIdentificationData;

  @BuiltValueField(wireName: r'wood')
  String? get wood;

  @BuiltValueField(wireName: r'qualitativeClass')
  String? get qualitativeClass;

  @BuiltValueField(wireName: r'totalVolumeInPrm')
  String? get totalVolumeInPrm;

  @BuiltValueField(wireName: r'totalVolume')
  String? get totalVolume;

  @BuiltValueField(wireName: r'issuedBy')
  String? get issuedBy;

  @BuiltValueField(wireName: r'issuedDate')
  DateTime? get issuedDate;

  @BuiltValueField(wireName: r'issuedTime')
  String? get issuedTime;

  @BuiltValueField(wireName: r'tookOverBy')
  String? get tookOverBy;

  @BuiltValueField(wireName: r'tookOverDate')
  DateTime? get tookOverDate;

  @BuiltValueField(wireName: r'tookOverTime')
  String? get tookOverTime;

  @BuiltValueField(wireName: r'woodLogsIds')
  BuiltList<String>? get woodLogsIds;

  @BuiltValueField(wireName: r'woodLogs')
  BuiltList<WoodLogReportDTO>? get woodLogs;

  ProofOfOriginDTO._();

  factory ProofOfOriginDTO([void updates(ProofOfOriginDTOBuilder b)]) =
      _$ProofOfOriginDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProofOfOriginDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProofOfOriginDTO> get serializer =>
      _$ProofOfOriginDTOSerializer();
}

class _$ProofOfOriginDTOSerializer
    implements PrimitiveSerializer<ProofOfOriginDTO> {
  @override
  final Iterable<Type> types = const [ProofOfOriginDTO, _$ProofOfOriginDTO];

  @override
  final String wireName = r'ProofOfOriginDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProofOfOriginDTO object, {
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
    if (object.supplierName != null) {
      yield r'supplierName';
      yield serializers.serialize(
        object.supplierName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierCity != null) {
      yield r'supplierCity';
      yield serializers.serialize(
        object.supplierCity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierStreetAndNumber != null) {
      yield r'supplierStreetAndNumber';
      yield serializers.serialize(
        object.supplierStreetAndNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierZipCode != null) {
      yield r'supplierZipCode';
      yield serializers.serialize(
        object.supplierZipCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierCountry != null) {
      yield r'supplierCountry';
      yield serializers.serialize(
        object.supplierCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierVatNumber != null) {
      yield r'supplierVatNumber';
      yield serializers.serialize(
        object.supplierVatNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(CompanyDTO),
      );
    }
    if (object.customerName != null) {
      yield r'customerName';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerCity != null) {
      yield r'customerCity';
      yield serializers.serialize(
        object.customerCity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerStreetAndNumber != null) {
      yield r'customerStreetAndNumber';
      yield serializers.serialize(
        object.customerStreetAndNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerZipCode != null) {
      yield r'customerZipCode';
      yield serializers.serialize(
        object.customerZipCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerCountry != null) {
      yield r'customerCountry';
      yield serializers.serialize(
        object.customerCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerVatNumber != null) {
      yield r'customerVatNumber';
      yield serializers.serialize(
        object.customerVatNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipper != null) {
      yield r'shipper';
      yield serializers.serialize(
        object.shipper,
        specifiedType: const FullType(CompanyDTO),
      );
    }
    if (object.shipperName != null) {
      yield r'shipperName';
      yield serializers.serialize(
        object.shipperName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipperCity != null) {
      yield r'shipperCity';
      yield serializers.serialize(
        object.shipperCity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipperStreetAndNumber != null) {
      yield r'shipperStreetAndNumber';
      yield serializers.serialize(
        object.shipperStreetAndNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipperZipCode != null) {
      yield r'shipperZipCode';
      yield serializers.serialize(
        object.shipperZipCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipperCountry != null) {
      yield r'shipperCountry';
      yield serializers.serialize(
        object.shipperCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shipperVatNumber != null) {
      yield r'shipperVatNumber';
      yield serializers.serialize(
        object.shipperVatNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.driverName != null) {
      yield r'driverName';
      yield serializers.serialize(
        object.driverName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vehicle != null) {
      yield r'vehicle';
      yield serializers.serialize(
        object.vehicle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licensePlate != null) {
      yield r'licensePlate';
      yield serializers.serialize(
        object.licensePlate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wagonNumber != null) {
      yield r'wagonNumber';
      yield serializers.serialize(
        object.wagonNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.addressFrom != null) {
      yield r'addressFrom';
      yield serializers.serialize(
        object.addressFrom,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.addressTo != null) {
      yield r'addressTo';
      yield serializers.serialize(
        object.addressTo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateOfShipment != null) {
      yield r'dateOfShipment';
      yield serializers.serialize(
        object.dateOfShipment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateOfLoading != null) {
      yield r'dateOfLoading';
      yield serializers.serialize(
        object.dateOfLoading,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.brandIdentificationData != null) {
      yield r'brandIdentificationData';
      yield serializers.serialize(
        object.brandIdentificationData,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wood != null) {
      yield r'wood';
      yield serializers.serialize(
        object.wood,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qualitativeClass != null) {
      yield r'qualitativeClass';
      yield serializers.serialize(
        object.qualitativeClass,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalVolumeInPrm != null) {
      yield r'totalVolumeInPrm';
      yield serializers.serialize(
        object.totalVolumeInPrm,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalVolume != null) {
      yield r'totalVolume';
      yield serializers.serialize(
        object.totalVolume,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.issuedBy != null) {
      yield r'issuedBy';
      yield serializers.serialize(
        object.issuedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.issuedDate != null) {
      yield r'issuedDate';
      yield serializers.serialize(
        object.issuedDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.issuedTime != null) {
      yield r'issuedTime';
      yield serializers.serialize(
        object.issuedTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tookOverBy != null) {
      yield r'tookOverBy';
      yield serializers.serialize(
        object.tookOverBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tookOverDate != null) {
      yield r'tookOverDate';
      yield serializers.serialize(
        object.tookOverDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tookOverTime != null) {
      yield r'tookOverTime';
      yield serializers.serialize(
        object.tookOverTime,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProofOfOriginDTO object, {
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
    required ProofOfOriginDTOBuilder result,
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
        case r'supplierName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierName = valueDes;
          break;
        case r'supplierCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierCity = valueDes;
          break;
        case r'supplierStreetAndNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierStreetAndNumber = valueDes;
          break;
        case r'supplierZipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierZipCode = valueDes;
          break;
        case r'supplierCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierCountry = valueDes;
          break;
        case r'supplierVatNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplierVatNumber = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompanyDTO),
          ) as CompanyDTO;
          result.customer.replace(valueDes);
          break;
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'customerCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerCity = valueDes;
          break;
        case r'customerStreetAndNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerStreetAndNumber = valueDes;
          break;
        case r'customerZipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerZipCode = valueDes;
          break;
        case r'customerCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerCountry = valueDes;
          break;
        case r'customerVatNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerVatNumber = valueDes;
          break;
        case r'shipper':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompanyDTO),
          ) as CompanyDTO;
          result.shipper.replace(valueDes);
          break;
        case r'shipperName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperName = valueDes;
          break;
        case r'shipperCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperCity = valueDes;
          break;
        case r'shipperStreetAndNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperStreetAndNumber = valueDes;
          break;
        case r'shipperZipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperZipCode = valueDes;
          break;
        case r'shipperCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperCountry = valueDes;
          break;
        case r'shipperVatNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shipperVatNumber = valueDes;
          break;
        case r'driverName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.driverName = valueDes;
          break;
        case r'vehicle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.vehicle = valueDes;
          break;
        case r'licensePlate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licensePlate = valueDes;
          break;
        case r'wagonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wagonNumber = valueDes;
          break;
        case r'addressFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.addressFrom = valueDes;
          break;
        case r'addressTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.addressTo = valueDes;
          break;
        case r'dateOfShipment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfShipment = valueDes;
          break;
        case r'dateOfLoading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfLoading = valueDes;
          break;
        case r'brandIdentificationData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.brandIdentificationData = valueDes;
          break;
        case r'wood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wood = valueDes;
          break;
        case r'qualitativeClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.qualitativeClass = valueDes;
          break;
        case r'totalVolumeInPrm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalVolumeInPrm = valueDes;
          break;
        case r'totalVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalVolume = valueDes;
          break;
        case r'issuedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuedBy = valueDes;
          break;
        case r'issuedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.issuedDate = valueDes;
          break;
        case r'issuedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuedTime = valueDes;
          break;
        case r'tookOverBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tookOverBy = valueDes;
          break;
        case r'tookOverDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.tookOverDate = valueDes;
          break;
        case r'tookOverTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tookOverTime = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProofOfOriginDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProofOfOriginDTOBuilder();
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
