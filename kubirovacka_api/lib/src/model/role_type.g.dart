// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoleType _$owner = const RoleType._('owner');
const RoleType _$employee = const RoleType._('employee');
const RoleType _$custom = const RoleType._('custom');

RoleType _$valueOf(String name) {
  switch (name) {
    case 'owner':
      return _$owner;
    case 'employee':
      return _$employee;
    case 'custom':
      return _$custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RoleType> _$values = BuiltSet<RoleType>(const <RoleType>[
  _$owner,
  _$employee,
  _$custom,
]);

class _$RoleTypeMeta {
  const _$RoleTypeMeta();
  RoleType get owner => _$owner;
  RoleType get employee => _$employee;
  RoleType get custom => _$custom;
  RoleType valueOf(String name) => _$valueOf(name);
  BuiltSet<RoleType> get values => _$values;
}

abstract class _$RoleTypeMixin {
  // ignore: non_constant_identifier_names
  _$RoleTypeMeta get RoleType => const _$RoleTypeMeta();
}

Serializer<RoleType> _$roleTypeSerializer = _$RoleTypeSerializer();

class _$RoleTypeSerializer implements PrimitiveSerializer<RoleType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owner': 'Owner',
    'employee': 'Employee',
    'custom': 'Custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Owner': 'owner',
    'Employee': 'employee',
    'Custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[RoleType];
  @override
  final String wireName = 'RoleType';

  @override
  Object serialize(Serializers serializers, RoleType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RoleType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoleType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
