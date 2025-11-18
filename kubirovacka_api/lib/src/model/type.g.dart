// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Type _$verbose = const Type._('verbose');
const Type _$warn = const Type._('warn');
const Type _$error = const Type._('error');

Type _$valueOf(String name) {
  switch (name) {
    case 'verbose':
      return _$verbose;
    case 'warn':
      return _$warn;
    case 'error':
      return _$error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Type> _$values = BuiltSet<Type>(const <Type>[
  _$verbose,
  _$warn,
  _$error,
]);

class _$TypeMeta {
  const _$TypeMeta();
  Type get verbose => _$verbose;
  Type get warn => _$warn;
  Type get error => _$error;
  Type valueOf(String name) => _$valueOf(name);
  BuiltSet<Type> get values => _$values;
}

abstract class _$TypeMixin {
  // ignore: non_constant_identifier_names
  _$TypeMeta get Type => const _$TypeMeta();
}

Serializer<Type> _$typeSerializer = _$TypeSerializer();

class _$TypeSerializer implements PrimitiveSerializer<Type> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'verbose': 'Verbose',
    'warn': 'Warn',
    'error': 'Error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Verbose': 'verbose',
    'Warn': 'warn',
    'Error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[Type];
  @override
  final String wireName = 'Type';

  @override
  Object serialize(Serializers serializers, Type object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Type deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Type.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
