// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GroupType _$default_ = const GroupType._('default_');
const GroupType _$defaultCompany = const GroupType._('defaultCompany');

GroupType _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'defaultCompany':
      return _$defaultCompany;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupType> _$values = BuiltSet<GroupType>(const <GroupType>[
  _$default_,
  _$defaultCompany,
]);

class _$GroupTypeMeta {
  const _$GroupTypeMeta();
  GroupType get default_ => _$default_;
  GroupType get defaultCompany => _$defaultCompany;
  GroupType valueOf(String name) => _$valueOf(name);
  BuiltSet<GroupType> get values => _$values;
}

abstract class _$GroupTypeMixin {
  // ignore: non_constant_identifier_names
  _$GroupTypeMeta get GroupType => const _$GroupTypeMeta();
}

Serializer<GroupType> _$groupTypeSerializer = _$GroupTypeSerializer();

class _$GroupTypeSerializer implements PrimitiveSerializer<GroupType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'Default',
    'defaultCompany': 'DefaultCompany',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Default': 'default_',
    'DefaultCompany': 'defaultCompany',
  };

  @override
  final Iterable<Type> types = const <Type>[GroupType];
  @override
  final String wireName = 'GroupType';

  @override
  Object serialize(Serializers serializers, GroupType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GroupType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GroupType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
