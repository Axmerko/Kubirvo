//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_timespan.g.dart';

class StatsTimespan extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Today')
  static const StatsTimespan today = _$today;
  @BuiltValueEnumConst(wireName: r'ThisWeek')
  static const StatsTimespan thisWeek = _$thisWeek;
  @BuiltValueEnumConst(wireName: r'ThisMonth')
  static const StatsTimespan thisMonth = _$thisMonth;
  @BuiltValueEnumConst(wireName: r'ThisYear')
  static const StatsTimespan thisYear = _$thisYear;
  @BuiltValueEnumConst(wireName: r'SinceTheBeginningOfTime')
  static const StatsTimespan sinceTheBeginningOfTime =
      _$sinceTheBeginningOfTime;

  static Serializer<StatsTimespan> get serializer => _$statsTimespanSerializer;

  const StatsTimespan._(String name) : super(name);

  static BuiltSet<StatsTimespan> get values => _$values;
  static StatsTimespan valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StatsTimespanMixin = Object with _$StatsTimespanMixin;
