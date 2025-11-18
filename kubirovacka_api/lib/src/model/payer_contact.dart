//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payer_contact.g.dart';

/// PayerContact
///
/// Properties:
/// * [firstName]
/// * [lastName]
/// * [email]
/// * [phoneNumber]
/// * [city]
/// * [street]
/// * [postalCode]
/// * [countryCode]
@BuiltValue()
abstract class PayerContact
    implements Built<PayerContact, PayerContactBuilder> {
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'street')
  String? get street;

  @BuiltValueField(wireName: r'postalCode')
  String? get postalCode;

  @BuiltValueField(wireName: r'countryCode')
  Country? get countryCode;
  // enum countryCodeEnum {  CZE,  SVK,  AFG,  ALA,  ALB,  DZA,  ASM,  VIR,  AND,  AGO,  AIA,  ATA,  ATG,  ARG,  ARM,  ABW,  AUS,  AZE,  BHS,  BHR,  BGD,  BRB,  BEL,  BLZ,  BLR,  BEN,  BMU,  BTN,  BOL,  BES,  BIH,  BWA,  BVT,  BRA,  IOT,  VGB,  BRN,  BGR,  BFA,  BDI,  COK,  CUW,  TCD,  MNE,  CHN,  DNK,  COD,  DMA,  DOM,  DJI,  EGY,  ECU,  ERI,  EST,  ETH,  FRO,  FLK,  FJI,  PHL,  FIN,  FRA,  GUF,  ATF,  PYF,  GAB,  GMB,  GHA,  GIB,  GRD,  GRL,  GEO,  GLP,  GUM,  GTM,  GIN,  GNB,  GGY,  GUY,  HTI,  HMD,  HND,  HKG,  CHL,  HRV,  IND,  IDN,  IRQ,  IRN,  IRL,  ISL,  ITA,  ISR,  JAM,  JPN,  YEM,  JEY,  ZAF,  SGS,  KOR,  SSD,  JOR,  CYM,  KHM,  CMR,  CAN,  CPV,  QAT,  KAZ,  KEN,  KIR,  CCK,  COL,  COM,  COG,  CRI,  CUB,  KWT,  CYP,  KGZ,  LAO,  LSO,  LBN,  LBR,  LBY,  LIE,  LTU,  LVA,  LUX,  MAC,  MDG,  HUN,  MKD,  MYS,  MWI,  MDV,  MLI,  MLT,  IMN,  MAR,  MHL,  MTQ,  MUS,  MRT,  MYT,  UMI,  MEX,  FSM,  MDA,  MCO,  MNG,  MSR,  MOZ,  MMR,  NAM,  NRU,  DEU,  NPL,  NER,  NGA,  NIC,  NIU,  NLD,  NFK,  NOR,  NCL,  NZL,  OMN,  PAK,  PLW,  PSE,  PAN,  PNG,  PRY,  PER,  PCN,  CIV,  POL,  PRI,  PRT,  AUT,  REU,  GNQ,  ROU,  RUS,  RWA,  GRC,  SPM,  SLV,  WSM,  SMR,  SAU,  SEN,  PRK,  MNP,  SYC,  SLE,  SGP,  SVN,  SOM,  ARE,  GBR,  USA,  SRB,  CAF,  SDN,  SUR,  SHN,  LCA,  BLM,  KNA,  MAF,  SXM,  STP,  VCT,  SWZ,  SYR,  SLB,  ESP,  SJM,  LKA,  SWE,  CHE,  TJK,  TZA,  THA,  TWN,  TGO,  TKL,  TON,  TTO,  TUN,  TUR,  TKM,  TCA,  TUV,  UGA,  UKR,  URY,  UZB,  CXR,  VUT,  VAT,  VEN,  VNM,  TLS,  WLF,  ZMB,  ESH,  ZWE,  UNK,  };

  PayerContact._();

  factory PayerContact([void updates(PayerContactBuilder b)]) = _$PayerContact;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayerContactBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayerContact> get serializer => _$PayerContactSerializer();
}

class _$PayerContactSerializer implements PrimitiveSerializer<PayerContact> {
  @override
  final Iterable<Type> types = const [PayerContact, _$PayerContact];

  @override
  final String wireName = r'PayerContact';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayerContact object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.street != null) {
      yield r'street';
      yield serializers.serialize(
        object.street,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.postalCode != null) {
      yield r'postalCode';
      yield serializers.serialize(
        object.postalCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.countryCode != null) {
      yield r'countryCode';
      yield serializers.serialize(
        object.countryCode,
        specifiedType: const FullType(Country),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayerContact object, {
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
    required PayerContactBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'street':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.street = valueDes;
          break;
        case r'postalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.postalCode = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Country),
          ) as Country;
          result.countryCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayerContact deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayerContactBuilder();
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
