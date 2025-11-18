// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WoodLogType _$log = const WoodLogType._('log');
const WoodLogType _$raw = const WoodLogType._('raw');
const WoodLogType _$logUpRight = const WoodLogType._('logUpRight');
const WoodLogType _$logWithOutBark = const WoodLogType._('logWithOutBark');

WoodLogType _$valueOf(String name) {
  switch (name) {
    case 'log':
      return _$log;
    case 'raw':
      return _$raw;
    case 'logUpRight':
      return _$logUpRight;
    case 'logWithOutBark':
      return _$logWithOutBark;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WoodLogType> _$values =
    BuiltSet<WoodLogType>(const <WoodLogType>[
  _$log,
  _$raw,
  _$logUpRight,
  _$logWithOutBark,
]);

class _$WoodLogTypeMeta {
  const _$WoodLogTypeMeta();
  WoodLogType get log => _$log;
  WoodLogType get raw => _$raw;
  WoodLogType get logUpRight => _$logUpRight;
  WoodLogType get logWithOutBark => _$logWithOutBark;
  WoodLogType valueOf(String name) => _$valueOf(name);
  BuiltSet<WoodLogType> get values => _$values;
}

abstract class _$WoodLogTypeMixin {
  // ignore: non_constant_identifier_names
  _$WoodLogTypeMeta get WoodLogType => const _$WoodLogTypeMeta();
}

Serializer<WoodLogType> _$woodLogTypeSerializer = _$WoodLogTypeSerializer();

class _$WoodLogTypeSerializer implements PrimitiveSerializer<WoodLogType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'log': 'Log',
    'raw': 'Raw',
    'logUpRight': 'LogUpRight',
    'logWithOutBark': 'LogWithOutBark',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Log': 'log',
    'Raw': 'raw',
    'LogUpRight': 'logUpRight',
    'LogWithOutBark': 'logWithOutBark',
  };

  @override
  final Iterable<Type> types = const <Type>[WoodLogType];
  @override
  final String wireName = 'WoodLogType';

  @override
  Object serialize(Serializers serializers, WoodLogType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WoodLogType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WoodLogType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
