// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserGroupStatus _$active = const UserGroupStatus._('active');
const UserGroupStatus _$disabled = const UserGroupStatus._('disabled');

UserGroupStatus _$valueOf(String name) {
  switch (name) {
    case 'active':
      return _$active;
    case 'disabled':
      return _$disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserGroupStatus> _$values =
    BuiltSet<UserGroupStatus>(const <UserGroupStatus>[
  _$active,
  _$disabled,
]);

class _$UserGroupStatusMeta {
  const _$UserGroupStatusMeta();
  UserGroupStatus get active => _$active;
  UserGroupStatus get disabled => _$disabled;
  UserGroupStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<UserGroupStatus> get values => _$values;
}

abstract class _$UserGroupStatusMixin {
  // ignore: non_constant_identifier_names
  _$UserGroupStatusMeta get UserGroupStatus => const _$UserGroupStatusMeta();
}

Serializer<UserGroupStatus> _$userGroupStatusSerializer =
    _$UserGroupStatusSerializer();

class _$UserGroupStatusSerializer
    implements PrimitiveSerializer<UserGroupStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'Status_Active',
    'disabled': 'Status_Disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Status_Active': 'active',
    'Status_Disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[UserGroupStatus];
  @override
  final String wireName = 'UserGroupStatus';

  @override
  Object serialize(Serializers serializers, UserGroupStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserGroupStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserGroupStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
