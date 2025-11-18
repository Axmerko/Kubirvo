//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license.dart';
import 'package:kubirovacka_api/src/model/wood_log_list_status.dart';
import 'package:kubirovacka_api/src/model/group_type.dart';
import 'package:kubirovacka_api/src/model/ad.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/delivery_note.dart';
import 'package:kubirovacka_api/src/model/user_group.dart';
import 'package:kubirovacka_api/src/model/wood_log_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group.g.dart';

/// Group
///
/// Properties:
/// * [name]
/// * [groupType]
/// * [id]
/// * [parentId]
/// * [parent]
/// * [isAdvertiser]
/// * [adCredit]
/// * [userGroups]
/// * [logsLists]
/// * [deliveryNotes]
/// * [licensesOwned]
/// * [adsOwned]
/// * [logListStatuses]
@BuiltValue()
abstract class Group implements Built<Group, GroupBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'groupType')
  GroupType get groupType;
  // enum groupTypeEnum {  Default,  DefaultCompany,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  @BuiltValueField(wireName: r'parent')
  Group? get parent;

  @BuiltValueField(wireName: r'isAdvertiser')
  bool? get isAdvertiser;

  @BuiltValueField(wireName: r'adCredit')
  int? get adCredit;

  @BuiltValueField(wireName: r'userGroups')
  BuiltList<UserGroup>? get userGroups;

  @BuiltValueField(wireName: r'logsLists')
  BuiltList<WoodLogList>? get logsLists;

  @BuiltValueField(wireName: r'deliveryNotes')
  BuiltList<DeliveryNote>? get deliveryNotes;

  @BuiltValueField(wireName: r'licensesOwned')
  BuiltList<License>? get licensesOwned;

  @BuiltValueField(wireName: r'adsOwned')
  BuiltList<Ad>? get adsOwned;

  @BuiltValueField(wireName: r'logListStatuses')
  BuiltList<WoodLogListStatus>? get logListStatuses;

  Group._();

  factory Group([void updates(GroupBuilder b)]) = _$Group;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Group> get serializer => _$GroupSerializer();
}

class _$GroupSerializer implements PrimitiveSerializer<Group> {
  @override
  final Iterable<Type> types = const [Group, _$Group];

  @override
  final String wireName = r'Group';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Group object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'groupType';
    yield serializers.serialize(
      object.groupType,
      specifiedType: const FullType(GroupType),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType(Group),
      );
    }
    if (object.isAdvertiser != null) {
      yield r'isAdvertiser';
      yield serializers.serialize(
        object.isAdvertiser,
        specifiedType: const FullType(bool),
      );
    }
    if (object.adCredit != null) {
      yield r'adCredit';
      yield serializers.serialize(
        object.adCredit,
        specifiedType: const FullType(int),
      );
    }
    if (object.userGroups != null) {
      yield r'userGroups';
      yield serializers.serialize(
        object.userGroups,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(UserGroup)]),
      );
    }
    if (object.logsLists != null) {
      yield r'logsLists';
      yield serializers.serialize(
        object.logsLists,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
      );
    }
    if (object.deliveryNotes != null) {
      yield r'deliveryNotes';
      yield serializers.serialize(
        object.deliveryNotes,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(DeliveryNote)]),
      );
    }
    if (object.licensesOwned != null) {
      yield r'licensesOwned';
      yield serializers.serialize(
        object.licensesOwned,
        specifiedType: const FullType.nullable(BuiltList, [FullType(License)]),
      );
    }
    if (object.adsOwned != null) {
      yield r'adsOwned';
      yield serializers.serialize(
        object.adsOwned,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Ad)]),
      );
    }
    if (object.logListStatuses != null) {
      yield r'logListStatuses';
      yield serializers.serialize(
        object.logListStatuses,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogListStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Group object, {
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
    required GroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'groupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroupType),
          ) as GroupType;
          result.groupType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'parentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.parent.replace(valueDes);
          break;
        case r'isAdvertiser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAdvertiser = valueDes;
          break;
        case r'adCredit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.adCredit = valueDes;
          break;
        case r'userGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(UserGroup)]),
          ) as BuiltList<UserGroup>?;
          if (valueDes == null) continue;
          result.userGroups.replace(valueDes);
          break;
        case r'logsLists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
          ) as BuiltList<WoodLogList>?;
          if (valueDes == null) continue;
          result.logsLists.replace(valueDes);
          break;
        case r'deliveryNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(DeliveryNote)]),
          ) as BuiltList<DeliveryNote>?;
          if (valueDes == null) continue;
          result.deliveryNotes.replace(valueDes);
          break;
        case r'licensesOwned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(License)]),
          ) as BuiltList<License>?;
          if (valueDes == null) continue;
          result.licensesOwned.replace(valueDes);
          break;
        case r'adsOwned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Ad)]),
          ) as BuiltList<Ad>?;
          if (valueDes == null) continue;
          result.adsOwned.replace(valueDes);
          break;
        case r'logListStatuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(WoodLogListStatus)]),
          ) as BuiltList<WoodLogListStatus>?;
          if (valueDes == null) continue;
          result.logListStatuses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Group deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupBuilder();
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
