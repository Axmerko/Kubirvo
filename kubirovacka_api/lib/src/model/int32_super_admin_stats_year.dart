//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'int32_super_admin_stats_year.g.dart';

/// Int32SuperAdminStatsYear
///
/// Properties:
/// * [total]
/// * [months]
@BuiltValue()
abstract class Int32SuperAdminStatsYear
    implements
        Built<Int32SuperAdminStatsYear, Int32SuperAdminStatsYearBuilder> {
  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'months')
  BuiltMap<String, int?>? get months;

  Int32SuperAdminStatsYear._();

  factory Int32SuperAdminStatsYear(
          [void updates(Int32SuperAdminStatsYearBuilder b)]) =
      _$Int32SuperAdminStatsYear;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Int32SuperAdminStatsYearBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Int32SuperAdminStatsYear> get serializer =>
      _$Int32SuperAdminStatsYearSerializer();
}

class _$Int32SuperAdminStatsYearSerializer
    implements PrimitiveSerializer<Int32SuperAdminStatsYear> {
  @override
  final Iterable<Type> types = const [
    Int32SuperAdminStatsYear,
    _$Int32SuperAdminStatsYear
  ];

  @override
  final String wireName = r'Int32SuperAdminStatsYear';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Int32SuperAdminStatsYear object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.months != null) {
      yield r'months';
      yield serializers.serialize(
        object.months,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Int32SuperAdminStatsYear object, {
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
    required Int32SuperAdminStatsYearBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(int)]),
          ) as BuiltMap<String, int?>?;
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
  Int32SuperAdminStatsYear deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Int32SuperAdminStatsYearBuilder();
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
