//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/group_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_brief_dto.g.dart';

/// GroupBriefDTO
///
/// Properties:
/// * [id]
/// * [name]
/// * [groupType]
/// * [parentId]
@BuiltValue()
abstract class GroupBriefDTO
    implements Built<GroupBriefDTO, GroupBriefDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'groupType')
  GroupType? get groupType;
  // enum groupTypeEnum {  Default,  DefaultCompany,  };

  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  GroupBriefDTO._();

  factory GroupBriefDTO([void updates(GroupBriefDTOBuilder b)]) =
      _$GroupBriefDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupBriefDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupBriefDTO> get serializer =>
      _$GroupBriefDTOSerializer();
}

class _$GroupBriefDTOSerializer implements PrimitiveSerializer<GroupBriefDTO> {
  @override
  final Iterable<Type> types = const [GroupBriefDTO, _$GroupBriefDTO];

  @override
  final String wireName = r'GroupBriefDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupBriefDTO object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupBriefDTO object, {
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
    required GroupBriefDTOBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupBriefDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupBriefDTOBuilder();
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
