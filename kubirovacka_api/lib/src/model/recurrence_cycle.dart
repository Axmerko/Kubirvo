//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurrence_cycle.g.dart';

class RecurrenceCycle extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MONTH')
  static const RecurrenceCycle MONTH = _$MONTH;
  @BuiltValueEnumConst(wireName: r'WEEK')
  static const RecurrenceCycle WEEK = _$WEEK;
  @BuiltValueEnumConst(wireName: r'DAY')
  static const RecurrenceCycle DAY = _$DAY;
  @BuiltValueEnumConst(wireName: r'ON_DEMAND')
  static const RecurrenceCycle ON_DEMAND = _$ON_DEMAND;

  static Serializer<RecurrenceCycle> get serializer =>
      _$recurrenceCycleSerializer;

  const RecurrenceCycle._(String name) : super(name);

  static BuiltSet<RecurrenceCycle> get values => _$values;
  static RecurrenceCycle valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RecurrenceCycleMixin = Object with _$RecurrenceCycleMixin;
