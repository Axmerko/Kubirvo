// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PreAuthState _$REQUESTED = const PreAuthState._('REQUESTED');
const PreAuthState _$AUTHORIZED = const PreAuthState._('AUTHORIZED');
const PreAuthState _$CAPTURED = const PreAuthState._('CAPTURED');
const PreAuthState _$CANCELED = const PreAuthState._('CANCELED');

PreAuthState _$valueOf(String name) {
  switch (name) {
    case 'REQUESTED':
      return _$REQUESTED;
    case 'AUTHORIZED':
      return _$AUTHORIZED;
    case 'CAPTURED':
      return _$CAPTURED;
    case 'CANCELED':
      return _$CANCELED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PreAuthState> _$values =
    BuiltSet<PreAuthState>(const <PreAuthState>[
  _$REQUESTED,
  _$AUTHORIZED,
  _$CAPTURED,
  _$CANCELED,
]);

class _$PreAuthStateMeta {
  const _$PreAuthStateMeta();
  PreAuthState get REQUESTED => _$REQUESTED;
  PreAuthState get AUTHORIZED => _$AUTHORIZED;
  PreAuthState get CAPTURED => _$CAPTURED;
  PreAuthState get CANCELED => _$CANCELED;
  PreAuthState valueOf(String name) => _$valueOf(name);
  BuiltSet<PreAuthState> get values => _$values;
}

abstract class _$PreAuthStateMixin {
  // ignore: non_constant_identifier_names
  _$PreAuthStateMeta get PreAuthState => const _$PreAuthStateMeta();
}

Serializer<PreAuthState> _$preAuthStateSerializer = _$PreAuthStateSerializer();

class _$PreAuthStateSerializer implements PrimitiveSerializer<PreAuthState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REQUESTED': 'REQUESTED',
    'AUTHORIZED': 'AUTHORIZED',
    'CAPTURED': 'CAPTURED',
    'CANCELED': 'CANCELED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REQUESTED': 'REQUESTED',
    'AUTHORIZED': 'AUTHORIZED',
    'CAPTURED': 'CAPTURED',
    'CANCELED': 'CANCELED',
  };

  @override
  final Iterable<Type> types = const <Type>[PreAuthState];
  @override
  final String wireName = 'PreAuthState';

  @override
  Object serialize(Serializers serializers, PreAuthState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PreAuthState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PreAuthState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
