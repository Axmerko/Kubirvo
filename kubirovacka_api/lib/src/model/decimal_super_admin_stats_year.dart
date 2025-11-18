//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decimal_super_admin_stats_year.g.dart';

/// DecimalSuperAdminStatsYear
///
/// Properties:
/// * [total]
/// * [months]
@BuiltValue()
abstract class DecimalSuperAdminStatsYear
    implements
        Built<DecimalSuperAdminStatsYear, DecimalSuperAdminStatsYearBuilder> {
  @BuiltValueField(wireName: r'total')
  double? get total;

  @BuiltValueField(wireName: r'months')
  BuiltMap<String, double?>? get months;

  DecimalSuperAdminStatsYear._();

  factory DecimalSuperAdminStatsYear(
          [void updates(DecimalSuperAdminStatsYearBuilder b)]) =
      _$DecimalSuperAdminStatsYear;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecimalSuperAdminStatsYearBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecimalSuperAdminStatsYear> get serializer =>
      _$DecimalSuperAdminStatsYearSerializer();
}

class _$DecimalSuperAdminStatsYearSerializer
    implements PrimitiveSerializer<DecimalSuperAdminStatsYear> {
  @override
  final Iterable<Type> types = const [
    DecimalSuperAdminStatsYear,
    _$DecimalSuperAdminStatsYear
  ];

  @override
  final String wireName = r'DecimalSuperAdminStatsYear';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecimalSuperAdminStatsYear object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(double),
      );
    }
    if (object.months != null) {
      yield r'months';
      yield serializers.serialize(
        object.months,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(double)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecimalSuperAdminStatsYear object, {
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
    required DecimalSuperAdminStatsYearBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.total = valueDes;
          break;
        case r'months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(double)]),
          ) as BuiltMap<String, double?>?;
          if (valueDes == null) continue;
          result.months.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecimalSuperAdminStatsYear deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecimalSuperAdminStatsYearBuilder();
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
