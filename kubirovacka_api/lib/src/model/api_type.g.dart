// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiType _$verbose = const ApiType._('verbose');
const ApiType _$warn = const ApiType._('warn');
const ApiType _$error = const ApiType._('error');

ApiType _$valueOf(String name) {
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

final BuiltSet<ApiType> _$values = BuiltSet<ApiType>(const <ApiType>[
  _$verbose,
  _$warn,
  _$error,
]);

class _$ApiTypeMeta {
  const _$ApiTypeMeta();
  ApiType get verbose => _$verbose;
  ApiType get warn => _$warn;
  ApiType get error => _$error;
  ApiType valueOf(String name) => _$valueOf(name);
  BuiltSet<ApiType> get values => _$values;
}

abstract class _$ApiTypeMixin {
  // ignore: non_constant_identifier_names
  _$ApiTypeMeta get ApiType => const _$ApiTypeMeta();
}

Serializer<ApiType> _$apiTypeSerializer = _$ApiTypeSerializer();

class _$ApiTypeSerializer implements PrimitiveSerializer<ApiType> {
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
  final Iterable<Type> types = const <Type>[ApiType];
  @override
  final String wireName = 'ApiType';

  @override
  Object serialize(Serializers serializers, ApiType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ApiType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApiType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
