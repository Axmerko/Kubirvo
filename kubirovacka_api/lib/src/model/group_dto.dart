//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/group_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_dto.g.dart';

/// GroupDTO
///
/// Properties:
/// * [id]
/// * [name]
/// * [groupType]
/// * [parentId]
/// * [isHomeGroup]
/// * [permissions]
/// * [isAdvertiser]
/// * [adCredits]
@BuiltValue()
abstract class GroupDTO implements Built<GroupDTO, GroupDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'groupType')
  GroupType? get groupType;
  // enum groupTypeEnum {  Default,  DefaultCompany,  };

  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  @BuiltValueField(wireName: r'isHomeGroup')
  bool? get isHomeGroup;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<JsonObject?>? get permissions;

  @BuiltValueField(wireName: r'isAdvertiser')
  bool? get isAdvertiser;

  @BuiltValueField(wireName: r'adCredits')
  int? get adCredits;

  GroupDTO._();

  factory GroupDTO([void updates(GroupDTOBuilder b)]) = _$GroupDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupDTO> get serializer => _$GroupDTOSerializer();
}

class _$GroupDTOSerializer implements PrimitiveSerializer<GroupDTO> {
  @override
  final Iterable<Type> types = const [GroupDTO, _$GroupDTO];

  @override
  final String wireName = r'GroupDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.groupType != null) {
      yield r'groupType';
      yield serializers.serialize(
        object.groupType,
        specifiedType: const FullType(GroupType),
      );
    }
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isHomeGroup != null) {
      yield r'isHomeGroup';
      yield serializers.serialize(
        object.isHomeGroup,
        specifiedType: const FullType(bool),
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
    if (object.isAdvertiser != null) {
      yield r'isAdvertiser';
      yield serializers.serialize(
        object.isAdvertiser,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.adCredits != null) {
      yield r'adCredits';
      yield serializers.serialize(
        object.adCredits,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupDTO object, {
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
    required GroupDTOBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'groupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroupType),
          ) as GroupType;
          result.groupType = valueDes;
          break;
        case r'parentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'isHomeGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isHomeGroup = valueDes;
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
        case r'isAdvertiser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAdvertiser = valueDes;
          break;
        case r'adCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.adCredits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupDTOBuilder();
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
