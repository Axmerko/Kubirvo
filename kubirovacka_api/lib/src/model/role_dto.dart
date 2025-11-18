//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/role_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_dto.g.dart';

/// RoleDTO
///
/// Properties:
/// * [roleId]
/// * [roleType]
/// * [permissions]
/// * [isGlobal]
/// * [name]
@BuiltValue()
abstract class RoleDTO implements Built<RoleDTO, RoleDTOBuilder> {
  @BuiltValueField(wireName: r'roleId')
  String? get roleId;

  @BuiltValueField(wireName: r'roleType')
  RoleType? get roleType;
  // enum roleTypeEnum {  Owner,  Employee,  Custom,  };

  @BuiltValueField(wireName: r'permissions')
  BuiltList<JsonObject?>? get permissions;

  @BuiltValueField(wireName: r'isGlobal')
  bool? get isGlobal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  RoleDTO._();

  factory RoleDTO([void updates(RoleDTOBuilder b)]) = _$RoleDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RoleDTO> get serializer => _$RoleDTOSerializer();
}

class _$RoleDTOSerializer implements PrimitiveSerializer<RoleDTO> {
  @override
  final Iterable<Type> types = const [RoleDTO, _$RoleDTO];

  @override
  final String wireName = r'RoleDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RoleDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.roleId != null) {
      yield r'roleId';
      yield serializers.serialize(
        object.roleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.roleType != null) {
      yield r'roleType';
      yield serializers.serialize(
        object.roleType,
        specifiedType: const FullType(RoleType),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
    if (object.isGlobal != null) {
      yield r'isGlobal';
      yield serializers.serialize(
        object.isGlobal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RoleDTO object, {
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
    required RoleDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'roleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleId = valueDes;
          break;
        case r'roleType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RoleType),
          ) as RoleType;
          result.roleType = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'isGlobal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGlobal = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RoleDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleDTOBuilder();
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
