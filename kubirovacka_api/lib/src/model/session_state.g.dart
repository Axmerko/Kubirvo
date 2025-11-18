// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SessionState _$CREATED = const SessionState._('CREATED');
const SessionState _$PAYMENT_METHOD_CHOSEN =
    const SessionState._('PAYMENT_METHOD_CHOSEN');
const SessionState _$PAID = const SessionState._('PAID');
const SessionState _$AUTHORIZED = const SessionState._('AUTHORIZED');
const SessionState _$CANCELED = const SessionState._('CANCELED');
const SessionState _$TIMEOUTED = const SessionState._('TIMEOUTED');
const SessionState _$REFUNDED = const SessionState._('REFUNDED');
const SessionState _$PARTIALLY_REFUNDED =
    const SessionState._('PARTIALLY_REFUNDED');

SessionState _$valueOf(String name) {
  switch (name) {
    case 'CREATED':
      return _$CREATED;
    case 'PAYMENT_METHOD_CHOSEN':
      return _$PAYMENT_METHOD_CHOSEN;
    case 'PAID':
      return _$PAID;
    case 'AUTHORIZED':
      return _$AUTHORIZED;
    case 'CANCELED':
      return _$CANCELED;
    case 'TIMEOUTED':
      return _$TIMEOUTED;
    case 'REFUNDED':
      return _$REFUNDED;
    case 'PARTIALLY_REFUNDED':
      return _$PARTIALLY_REFUNDED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SessionState> _$values =
    BuiltSet<SessionState>(const <SessionState>[
  _$CREATED,
  _$PAYMENT_METHOD_CHOSEN,
  _$PAID,
  _$AUTHORIZED,
  _$CANCELED,
  _$TIMEOUTED,
  _$REFUNDED,
  _$PARTIALLY_REFUNDED,
]);

class _$SessionStateMeta {
  const _$SessionStateMeta();
  SessionState get CREATED => _$CREATED;
  SessionState get PAYMENT_METHOD_CHOSEN => _$PAYMENT_METHOD_CHOSEN;
  SessionState get PAID => _$PAID;
  SessionState get AUTHORIZED => _$AUTHORIZED;
  SessionState get CANCELED => _$CANCELED;
  SessionState get TIMEOUTED => _$TIMEOUTED;
  SessionState get REFUNDED => _$REFUNDED;
  SessionState get PARTIALLY_REFUNDED => _$PARTIALLY_REFUNDED;
  SessionState valueOf(String name) => _$valueOf(name);
  BuiltSet<SessionState> get values => _$values;
}

abstract class _$SessionStateMixin {
  // ignore: non_constant_identifier_names
  _$SessionStateMeta get SessionState => const _$SessionStateMeta();
}

Serializer<SessionState> _$sessionStateSerializer = _$SessionStateSerializer();

class _$SessionStateSerializer implements PrimitiveSerializer<SessionState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATED': 'CREATED',
    'PAYMENT_METHOD_CHOSEN': 'PAYMENT_METHOD_CHOSEN',
    'PAID': 'PAID',
    'AUTHORIZED': 'AUTHORIZED',
    'CANCELED': 'CANCELED',
    'TIMEOUTED': 'TIMEOUTED',
    'REFUNDED': 'REFUNDED',
    'PARTIALLY_REFUNDED': 'PARTIALLY_REFUNDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATED': 'CREATED',
    'PAYMENT_METHOD_CHOSEN': 'PAYMENT_METHOD_CHOSEN',
    'PAID': 'PAID',
    'AUTHORIZED': 'AUTHORIZED',
    'CANCELED': 'CANCELED',
    'TIMEOUTED': 'TIMEOUTED',
    'REFUNDED': 'REFUNDED',
    'PARTIALLY_REFUNDED': 'PARTIALLY_REFUNDED',
  };

  @override
  final Iterable<Type> types = const <Type>[SessionState];
  @override
  final String wireName = 'SessionState';

  @override
  Object serialize(Serializers serializers, SessionState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SessionState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SessionState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
