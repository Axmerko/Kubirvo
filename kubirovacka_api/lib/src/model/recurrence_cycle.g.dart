// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurrence_cycle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecurrenceCycle _$MONTH = const RecurrenceCycle._('MONTH');
const RecurrenceCycle _$WEEK = const RecurrenceCycle._('WEEK');
const RecurrenceCycle _$DAY = const RecurrenceCycle._('DAY');
const RecurrenceCycle _$ON_DEMAND = const RecurrenceCycle._('ON_DEMAND');

RecurrenceCycle _$valueOf(String name) {
  switch (name) {
    case 'MONTH':
      return _$MONTH;
    case 'WEEK':
      return _$WEEK;
    case 'DAY':
      return _$DAY;
    case 'ON_DEMAND':
      return _$ON_DEMAND;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecurrenceCycle> _$values =
    BuiltSet<RecurrenceCycle>(const <RecurrenceCycle>[
  _$MONTH,
  _$WEEK,
  _$DAY,
  _$ON_DEMAND,
]);

class _$RecurrenceCycleMeta {
  const _$RecurrenceCycleMeta();
  RecurrenceCycle get MONTH => _$MONTH;
  RecurrenceCycle get WEEK => _$WEEK;
  RecurrenceCycle get DAY => _$DAY;
  RecurrenceCycle get ON_DEMAND => _$ON_DEMAND;
  RecurrenceCycle valueOf(String name) => _$valueOf(name);
  BuiltSet<RecurrenceCycle> get values => _$values;
}

abstract class _$RecurrenceCycleMixin {
  // ignore: non_constant_identifier_names
  _$RecurrenceCycleMeta get RecurrenceCycle => const _$RecurrenceCycleMeta();
}

Serializer<RecurrenceCycle> _$recurrenceCycleSerializer =
    _$RecurrenceCycleSerializer();

class _$RecurrenceCycleSerializer
    implements PrimitiveSerializer<RecurrenceCycle> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MONTH': 'MONTH',
    'WEEK': 'WEEK',
    'DAY': 'DAY',
    'ON_DEMAND': 'ON_DEMAND',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MONTH': 'MONTH',
    'WEEK': 'WEEK',
    'DAY': 'DAY',
    'ON_DEMAND': 'ON_DEMAND',
  };

  @override
  final Iterable<Type> types = const <Type>[RecurrenceCycle];
  @override
  final String wireName = 'RecurrenceCycle';

  @override
  Object serialize(Serializers serializers, RecurrenceCycle object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecurrenceCycle deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecurrenceCycle.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
