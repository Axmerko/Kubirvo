// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurrence_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecurrenceState _$REQUESTED = const RecurrenceState._('REQUESTED');
const RecurrenceState _$STARTED = const RecurrenceState._('STARTED');
const RecurrenceState _$STOPPED = const RecurrenceState._('STOPPED');

RecurrenceState _$valueOf(String name) {
  switch (name) {
    case 'REQUESTED':
      return _$REQUESTED;
    case 'STARTED':
      return _$STARTED;
    case 'STOPPED':
      return _$STOPPED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecurrenceState> _$values =
    BuiltSet<RecurrenceState>(const <RecurrenceState>[
  _$REQUESTED,
  _$STARTED,
  _$STOPPED,
]);

class _$RecurrenceStateMeta {
  const _$RecurrenceStateMeta();
  RecurrenceState get REQUESTED => _$REQUESTED;
  RecurrenceState get STARTED => _$STARTED;
  RecurrenceState get STOPPED => _$STOPPED;
  RecurrenceState valueOf(String name) => _$valueOf(name);
  BuiltSet<RecurrenceState> get values => _$values;
}

abstract class _$RecurrenceStateMixin {
  // ignore: non_constant_identifier_names
  _$RecurrenceStateMeta get RecurrenceState => const _$RecurrenceStateMeta();
}

Serializer<RecurrenceState> _$recurrenceStateSerializer =
    _$RecurrenceStateSerializer();

class _$RecurrenceStateSerializer
    implements PrimitiveSerializer<RecurrenceState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REQUESTED': 'REQUESTED',
    'STARTED': 'STARTED',
    'STOPPED': 'STOPPED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REQUESTED': 'REQUESTED',
    'STARTED': 'STARTED',
    'STOPPED': 'STOPPED',
  };

  @override
  final Iterable<Type> types = const <Type>[RecurrenceState];
  @override
  final String wireName = 'RecurrenceState';

  @override
  Object serialize(Serializers serializers, RecurrenceState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecurrenceState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecurrenceState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
