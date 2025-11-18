//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurrence_state.g.dart';

class RecurrenceState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REQUESTED')
  static const RecurrenceState REQUESTED = _$REQUESTED;
  @BuiltValueEnumConst(wireName: r'STARTED')
  static const RecurrenceState STARTED = _$STARTED;
  @BuiltValueEnumConst(wireName: r'STOPPED')
  static const RecurrenceState STOPPED = _$STOPPED;

  static Serializer<RecurrenceState> get serializer =>
      _$recurrenceStateSerializer;

  const RecurrenceState._(String name) : super(name);

  static BuiltSet<RecurrenceState> get values => _$values;
  static RecurrenceState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RecurrenceStateMixin = Object with _$RecurrenceStateMixin;
