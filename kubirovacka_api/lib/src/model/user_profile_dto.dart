//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/user_group_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_dto.g.dart';

/// UserProfileDTO
///
/// Properties:
/// * [id]
/// * [registeredAt]
/// * [email]
/// * [firstName]
/// * [lastName]
/// * [locale]
/// * [status]
/// * [homeGroupId]
/// * [licenseEnd]
/// * [roleId]
/// * [isSubAccount]
@BuiltValue()
abstract class UserProfileDTO
    implements Built<UserProfileDTO, UserProfileDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'registeredAt')
  DateTime? get registeredAt;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'status')
  UserGroupStatus? get status;
  // enum statusEnum {  Status_Active,  Status_Disabled,  };

  @BuiltValueField(wireName: r'homeGroupId')
  String? get homeGroupId;

  @BuiltValueField(wireName: r'licenseEnd')
  DateTime? get licenseEnd;

  @BuiltValueField(wireName: r'roleId')
  String? get roleId;

  @BuiltValueField(wireName: r'isSubAccount')
  bool? get isSubAccount;

  UserProfileDTO._();

  factory UserProfileDTO([void updates(UserProfileDTOBuilder b)]) =
      _$UserProfileDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileDTO> get serializer =>
      _$UserProfileDTOSerializer();
}

class _$UserProfileDTOSerializer
    implements PrimitiveSerializer<UserProfileDTO> {
  @override
  final Iterable<Type> types = const [UserProfileDTO, _$UserProfileDTO];

  @override
  final String wireName = r'UserProfileDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.registeredAt != null) {
      yield r'registeredAt';
      yield serializers.serialize(
        object.registeredAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UserGroupStatus),
      );
    }
    if (object.homeGroupId != null) {
      yield r'homeGroupId';
      yield serializers.serialize(
        object.homeGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licenseEnd != null) {
      yield r'licenseEnd';
      yield serializers.serialize(
        object.licenseEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.roleId != null) {
      yield r'roleId';
      yield serializers.serialize(
        object.roleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isSubAccount != null) {
      yield r'isSubAccount';
      yield serializers.serialize(
        object.isSubAccount,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileDTO object, {
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
    required UserProfileDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'registeredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.registeredAt = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.locale = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserGroupStatus),
          ) as UserGroupStatus;
          result.status = valueDes;
          break;
        case r'homeGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.homeGroupId = valueDes;
          break;
        case r'licenseEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.licenseEnd = valueDes;
          break;
        case r'roleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.roleId = valueDes;
          break;
        case r'isSubAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSubAccount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileDTOBuilder();
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
