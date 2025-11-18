//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/user_group_status.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/role.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_group.g.dart';

/// UserGroup
///
/// Properties:
/// * [userId]
/// * [groupId]
/// * [roleId]
/// * [isHomeGroup]
/// * [status]
/// * [isSubAccount]
/// * [user]
/// * [group]
/// * [role]
@BuiltValue()
abstract class UserGroup implements Built<UserGroup, UserGroupBuilder> {
  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'groupId')
  String get groupId;

  @BuiltValueField(wireName: r'roleId')
  String get roleId;

  @BuiltValueField(wireName: r'isHomeGroup')
  bool get isHomeGroup;

  @BuiltValueField(wireName: r'status')
  UserGroupStatus get status;
  // enum statusEnum {  Status_Active,  Status_Disabled,  };

  @BuiltValueField(wireName: r'isSubAccount')
  bool get isSubAccount;

  @BuiltValueField(wireName: r'user')
  User? get user;

  @BuiltValueField(wireName: r'group')
  Group? get group;

  @BuiltValueField(wireName: r'role')
  Role? get role;

  UserGroup._();

  factory UserGroup([void updates(UserGroupBuilder b)]) = _$UserGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserGroupBuilder b) => b..isSubAccount = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserGroup> get serializer => _$UserGroupSerializer();
}

class _$UserGroupSerializer implements PrimitiveSerializer<UserGroup> {
  @override
  final Iterable<Type> types = const [UserGroup, _$UserGroup];

  @override
  final String wireName = r'UserGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'groupId';
    yield serializers.serialize(
      object.groupId,
      specifiedType: const FullType(String),
    );
    yield r'roleId';
    yield serializers.serialize(
      object.roleId,
      specifiedType: const FullType(String),
    );
    yield r'isHomeGroup';
    yield serializers.serialize(
      object.isHomeGroup,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(UserGroupStatus),
    );
    yield r'isSubAccount';
    yield serializers.serialize(
      object.isSubAccount,
      specifiedType: const FullType(bool),
    );
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(Group),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(Role),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'groupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupId = valueDes;
          break;
        case r'roleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleId = valueDes;
          break;
        case r'isHomeGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isHomeGroup = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserGroupStatus),
          ) as UserGroupStatus;
          result.status = valueDes;
          break;
        case r'isSubAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSubAccount = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.group.replace(valueDes);
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Role),
          ) as Role;
          result.role.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserGroupBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
