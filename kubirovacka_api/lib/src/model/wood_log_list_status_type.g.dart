// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_status_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WoodLogListStatusType _$open = const WoodLogListStatusType._('open');
const WoodLogListStatusType _$deleted =
    const WoodLogListStatusType._('deleted');
const WoodLogListStatusType _$invoiced =
    const WoodLogListStatusType._('invoiced');

WoodLogListStatusType _$valueOf(String name) {
  switch (name) {
    case 'open':
      return _$open;
    case 'deleted':
      return _$deleted;
    case 'invoiced':
      return _$invoiced;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WoodLogListStatusType> _$values =
    BuiltSet<WoodLogListStatusType>(const <WoodLogListStatusType>[
  _$open,
  _$deleted,
  _$invoiced,
]);

class _$WoodLogListStatusTypeMeta {
  const _$WoodLogListStatusTypeMeta();
  WoodLogListStatusType get open => _$open;
  WoodLogListStatusType get deleted => _$deleted;
  WoodLogListStatusType get invoiced => _$invoiced;
  WoodLogListStatusType valueOf(String name) => _$valueOf(name);
  BuiltSet<WoodLogListStatusType> get values => _$values;
}

abstract class _$WoodLogListStatusTypeMixin {
  // ignore: non_constant_identifier_names
  _$WoodLogListStatusTypeMeta get WoodLogListStatusType =>
      const _$WoodLogListStatusTypeMeta();
}

Serializer<WoodLogListStatusType> _$woodLogListStatusTypeSerializer =
    _$WoodLogListStatusTypeSerializer();

class _$WoodLogListStatusTypeSerializer
    implements PrimitiveSerializer<WoodLogListStatusType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'Open',
    'deleted': 'Deleted',
    'invoiced': 'Invoiced',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Open': 'open',
    'Deleted': 'deleted',
    'Invoiced': 'invoiced',
  };

  @override
  final Iterable<Type> types = const <Type>[WoodLogListStatusType];
  @override
  final String wireName = 'WoodLogListStatusType';

  @override
  Object serialize(Serializers serializers, WoodLogListStatusType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WoodLogListStatusType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WoodLogListStatusType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
