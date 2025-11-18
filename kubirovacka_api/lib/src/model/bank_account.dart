//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bank_account.g.dart';

/// BankAccount
///
/// Properties:
/// * [prefix]
/// * [accountNumber]
/// * [bankCode]
/// * [iban]
/// * [bic]
/// * [accountName]
/// * [country]
/// * [accountToken]
@BuiltValue()
abstract class BankAccount implements Built<BankAccount, BankAccountBuilder> {
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'accountNumber')
  String? get accountNumber;

  @BuiltValueField(wireName: r'bankCode')
  String? get bankCode;

  @BuiltValueField(wireName: r'iban')
  String? get iban;

  @BuiltValueField(wireName: r'bic')
  String? get bic;

  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  @BuiltValueField(wireName: r'country')
  Country? get country;
  // enum countryEnum {  CZE,  SVK,  AFG,  ALA,  ALB,  DZA,  ASM,  VIR,  AND,  AGO,  AIA,  ATA,  ATG,  ARG,  ARM,  ABW,  AUS,  AZE,  BHS,  BHR,  BGD,  BRB,  BEL,  BLZ,  BLR,  BEN,  BMU,  BTN,  BOL,  BES,  BIH,  BWA,  BVT,  BRA,  IOT,  VGB,  BRN,  BGR,  BFA,  BDI,  COK,  CUW,  TCD,  MNE,  CHN,  DNK,  COD,  DMA,  DOM,  DJI,  EGY,  ECU,  ERI,  EST,  ETH,  FRO,  FLK,  FJI,  PHL,  FIN,  FRA,  GUF,  ATF,  PYF,  GAB,  GMB,  GHA,  GIB,  GRD,  GRL,  GEO,  GLP,  GUM,  GTM,  GIN,  GNB,  GGY,  GUY,  HTI,  HMD,  HND,  HKG,  CHL,  HRV,  IND,  IDN,  IRQ,  IRN,  IRL,  ISL,  ITA,  ISR,  JAM,  JPN,  YEM,  JEY,  ZAF,  SGS,  KOR,  SSD,  JOR,  CYM,  KHM,  CMR,  CAN,  CPV,  QAT,  KAZ,  KEN,  KIR,  CCK,  COL,  COM,  COG,  CRI,  CUB,  KWT,  CYP,  KGZ,  LAO,  LSO,  LBN,  LBR,  LBY,  LIE,  LTU,  LVA,  LUX,  MAC,  MDG,  HUN,  MKD,  MYS,  MWI,  MDV,  MLI,  MLT,  IMN,  MAR,  MHL,  MTQ,  MUS,  MRT,  MYT,  UMI,  MEX,  FSM,  MDA,  MCO,  MNG,  MSR,  MOZ,  MMR,  NAM,  NRU,  DEU,  NPL,  NER,  NGA,  NIC,  NIU,  NLD,  NFK,  NOR,  NCL,  NZL,  OMN,  PAK,  PLW,  PSE,  PAN,  PNG,  PRY,  PER,  PCN,  CIV,  POL,  PRI,  PRT,  AUT,  REU,  GNQ,  ROU,  RUS,  RWA,  GRC,  SPM,  SLV,  WSM,  SMR,  SAU,  SEN,  PRK,  MNP,  SYC,  SLE,  SGP,  SVN,  SOM,  ARE,  GBR,  USA,  SRB,  CAF,  SDN,  SUR,  SHN,  LCA,  BLM,  KNA,  MAF,  SXM,  STP,  VCT,  SWZ,  SYR,  SLB,  ESP,  SJM,  LKA,  SWE,  CHE,  TJK,  TZA,  THA,  TWN,  TGO,  TKL,  TON,  TTO,  TUN,  TUR,  TKM,  TCA,  TUV,  UGA,  UKR,  URY,  UZB,  CXR,  VUT,  VAT,  VEN,  VNM,  TLS,  WLF,  ZMB,  ESH,  ZWE,  UNK,  };

  @BuiltValueField(wireName: r'accountToken')
  String? get accountToken;

  BankAccount._();

  factory BankAccount([void updates(BankAccountBuilder b)]) = _$BankAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BankAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BankAccount> get serializer => _$BankAccountSerializer();
}

class _$BankAccountSerializer implements PrimitiveSerializer<BankAccount> {
  @override
  final Iterable<Type> types = const [BankAccount, _$BankAccount];

  @override
  final String wireName = r'BankAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BankAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accountNumber != null) {
      yield r'accountNumber';
      yield serializers.serialize(
        object.accountNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bankCode != null) {
      yield r'bankCode';
      yield serializers.serialize(
        object.bankCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.iban != null) {
      yield r'iban';
      yield serializers.serialize(
        object.iban,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bic != null) {
      yield r'bic';
      yield serializers.serialize(
        object.bic,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(Country),
      );
    }
    if (object.accountToken != null) {
      yield r'accountToken';
      yield serializers.serialize(
        object.accountToken,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BankAccount object, {
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
    required BankAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prefix = valueDes;
          break;
        case r'accountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountNumber = valueDes;
          break;
        case r'bankCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankCode = valueDes;
          break;
        case r'iban':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iban = valueDes;
          break;
        case r'bic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bic = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountName = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Country),
          ) as Country;
          result.country = valueDes;
          break;
        case r'accountToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BankAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BankAccountBuilder();
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
