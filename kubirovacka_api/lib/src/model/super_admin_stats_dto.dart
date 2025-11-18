//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/int32_super_admin_stats_year.dart';
import 'package:kubirovacka_api/src/model/decimal_super_admin_stats_year.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'super_admin_stats_dto.g.dart';

/// SuperAdminStatsDTO
///
/// Properties:
/// * [confirmedUsers]
/// * [activeLicenses]
/// * [activeMonthLicenses]
/// * [activeYearLicenses]
/// * [paidLicensePayments]
/// * [canceledOrTimeoutedLicensePayments]
/// * [invoicesForPayments]
/// * [moneyEarned]
@BuiltValue()
abstract class SuperAdminStatsDTO
    implements Built<SuperAdminStatsDTO, SuperAdminStatsDTOBuilder> {
  @BuiltValueField(wireName: r'confirmedUsers')
  int? get confirmedUsers;

  @BuiltValueField(wireName: r'activeLicenses')
  int? get activeLicenses;

  @BuiltValueField(wireName: r'activeMonthLicenses')
  int? get activeMonthLicenses;

  @BuiltValueField(wireName: r'activeYearLicenses')
  int? get activeYearLicenses;

  @BuiltValueField(wireName: r'paidLicensePayments')
  BuiltMap<String, Int32SuperAdminStatsYear>? get paidLicensePayments;

  @BuiltValueField(wireName: r'canceledOrTimeoutedLicensePayments')
  BuiltMap<String, Int32SuperAdminStatsYear>?
      get canceledOrTimeoutedLicensePayments;

  @BuiltValueField(wireName: r'invoicesForPayments')
  BuiltMap<String, Int32SuperAdminStatsYear>? get invoicesForPayments;

  @BuiltValueField(wireName: r'moneyEarned')
  BuiltMap<String, DecimalSuperAdminStatsYear>? get moneyEarned;

  SuperAdminStatsDTO._();

  factory SuperAdminStatsDTO([void updates(SuperAdminStatsDTOBuilder b)]) =
      _$SuperAdminStatsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuperAdminStatsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuperAdminStatsDTO> get serializer =>
      _$SuperAdminStatsDTOSerializer();
}

class _$SuperAdminStatsDTOSerializer
    implements PrimitiveSerializer<SuperAdminStatsDTO> {
  @override
  final Iterable<Type> types = const [SuperAdminStatsDTO, _$SuperAdminStatsDTO];

  @override
  final String wireName = r'SuperAdminStatsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuperAdminStatsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.confirmedUsers != null) {
      yield r'confirmedUsers';
      yield serializers.serialize(
        object.confirmedUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeLicenses != null) {
      yield r'activeLicenses';
      yield serializers.serialize(
        object.activeLicenses,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeMonthLicenses != null) {
      yield r'activeMonthLicenses';
      yield serializers.serialize(
        object.activeMonthLicenses,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeYearLicenses != null) {
      yield r'activeYearLicenses';
      yield serializers.serialize(
        object.activeYearLicenses,
        specifiedType: const FullType(int),
      );
    }
    if (object.paidLicensePayments != null) {
      yield r'paidLicensePayments';
      yield serializers.serialize(
        object.paidLicensePayments,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(Int32SuperAdminStatsYear)]),
      );
    }
    if (object.canceledOrTimeoutedLicensePayments != null) {
      yield r'canceledOrTimeoutedLicensePayments';
      yield serializers.serialize(
        object.canceledOrTimeoutedLicensePayments,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(Int32SuperAdminStatsYear)]),
      );
    }
    if (object.invoicesForPayments != null) {
      yield r'invoicesForPayments';
      yield serializers.serialize(
        object.invoicesForPayments,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(Int32SuperAdminStatsYear)]),
      );
    }
    if (object.moneyEarned != null) {
      yield r'moneyEarned';
      yield serializers.serialize(
        object.moneyEarned,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(DecimalSuperAdminStatsYear)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuperAdminStatsDTO object, {
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
    required SuperAdminStatsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmedUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.confirmedUsers = valueDes;
          break;
        case r'activeLicenses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeLicenses = valueDes;
          break;
        case r'activeMonthLicenses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeMonthLicenses = valueDes;
          break;
        case r'activeYearLicenses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeYearLicenses = valueDes;
          break;
        case r'paidLicensePayments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(Int32SuperAdminStatsYear)]),
          ) as BuiltMap<String, Int32SuperAdminStatsYear>?;
          if (valueDes == null) continue;
          result.paidLicensePayments.replace(valueDes);
          break;
        case r'canceledOrTimeoutedLicensePayments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(Int32SuperAdminStatsYear)]),
          ) as BuiltMap<String, Int32SuperAdminStatsYear>?;
          if (valueDes == null) continue;
          result.canceledOrTimeoutedLicensePayments.replace(valueDes);
          break;
        case r'invoicesForPayments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(Int32SuperAdminStatsYear)]),
          ) as BuiltMap<String, Int32SuperAdminStatsYear>?;
          if (valueDes == null) continue;
          result.invoicesForPayments.replace(valueDes);
          break;
        case r'moneyEarned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(DecimalSuperAdminStatsYear)]),
          ) as BuiltMap<String, DecimalSuperAdminStatsYear>?;
          if (valueDes == null) continue;
          result.moneyEarned.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuperAdminStatsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuperAdminStatsDTOBuilder();
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
