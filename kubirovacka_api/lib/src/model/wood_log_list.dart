//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_list_status.dart';
import 'package:kubirovacka_api/src/model/reward_type.dart';
import 'package:kubirovacka_api/src/model/wood_log.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:kubirovacka_api/src/model/wood_log_list_send.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list.g.dart';

/// WoodLogList
///
/// Properties:
/// * [name]
/// * [createdAt]
/// * [uploadedAt]
/// * [updatedAt]
/// * [creatorId]
/// * [rewardType]
/// * [rewardInCents]
/// * [ownerGroupId]
/// * [editedFromWeb]
/// * [isSnapshot]
/// * [statusId]
/// * [id]
/// * [editedBy]
/// * [woodLogListSendId]
/// * [copiedFromId]
/// * [ownerGroup]
/// * [creator]
/// * [logs]
/// * [woodLogListSend]
/// * [copiedFrom]
/// * [version]
/// * [status]
/// * [copies]
@BuiltValue()
abstract class WoodLogList implements Built<WoodLogList, WoodLogListBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'uploadedAt')
  DateTime get uploadedAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'creatorId')
  String get creatorId;

  @BuiltValueField(wireName: r'rewardType')
  RewardType get rewardType;
  // enum rewardTypeEnum {  RewardForCubicMeter,  };

  @BuiltValueField(wireName: r'rewardInCents')
  int get rewardInCents;

  @BuiltValueField(wireName: r'ownerGroupId')
  String get ownerGroupId;

  @BuiltValueField(wireName: r'editedFromWeb')
  bool get editedFromWeb;

  @BuiltValueField(wireName: r'isSnapshot')
  bool get isSnapshot;

  @BuiltValueField(wireName: r'statusId')
  int get statusId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'editedBy')
  String? get editedBy;

  @BuiltValueField(wireName: r'woodLogListSendId')
  String? get woodLogListSendId;

  @BuiltValueField(wireName: r'copiedFromId')
  String? get copiedFromId;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'creator')
  User? get creator;

  @BuiltValueField(wireName: r'logs')
  BuiltList<WoodLog>? get logs;

  @BuiltValueField(wireName: r'woodLogListSend')
  WoodLogListSend? get woodLogListSend;

  @BuiltValueField(wireName: r'copiedFrom')
  WoodLogList? get copiedFrom;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'status')
  WoodLogListStatus? get status;

  @BuiltValueField(wireName: r'copies')
  BuiltList<WoodLogList>? get copies;

  WoodLogList._();

  factory WoodLogList([void updates(WoodLogListBuilder b)]) = _$WoodLogList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogList> get serializer => _$WoodLogListSerializer();
}

class _$WoodLogListSerializer implements PrimitiveSerializer<WoodLogList> {
  @override
  final Iterable<Type> types = const [WoodLogList, _$WoodLogList];

  @override
  final String wireName = r'WoodLogList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'uploadedAt';
    yield serializers.serialize(
      object.uploadedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'creatorId';
    yield serializers.serialize(
      object.creatorId,
      specifiedType: const FullType(String),
    );
    yield r'rewardType';
    yield serializers.serialize(
      object.rewardType,
      specifiedType: const FullType(RewardType),
    );
    yield r'rewardInCents';
    yield serializers.serialize(
      object.rewardInCents,
      specifiedType: const FullType(int),
    );
    yield r'ownerGroupId';
    yield serializers.serialize(
      object.ownerGroupId,
      specifiedType: const FullType(String),
    );
    yield r'editedFromWeb';
    yield serializers.serialize(
      object.editedFromWeb,
      specifiedType: const FullType(bool),
    );
    yield r'isSnapshot';
    yield serializers.serialize(
      object.isSnapshot,
      specifiedType: const FullType(bool),
    );
    yield r'statusId';
    yield serializers.serialize(
      object.statusId,
      specifiedType: const FullType(int),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.editedBy != null) {
      yield r'editedBy';
      yield serializers.serialize(
        object.editedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.woodLogListSendId != null) {
      yield r'woodLogListSendId';
      yield serializers.serialize(
        object.woodLogListSendId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.copiedFromId != null) {
      yield r'copiedFromId';
      yield serializers.serialize(
        object.copiedFromId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ownerGroup != null) {
      yield r'ownerGroup';
      yield serializers.serialize(
        object.ownerGroup,
        specifiedType: const FullType(Group),
      );
    }
    if (object.creator != null) {
      yield r'creator';
      yield serializers.serialize(
        object.creator,
        specifiedType: const FullType(User),
      );
    }
    if (object.logs != null) {
      yield r'logs';
      yield serializers.serialize(
        object.logs,
        specifiedType: const FullType.nullable(BuiltList, [FullType(WoodLog)]),
      );
    }
    if (object.woodLogListSend != null) {
      yield r'woodLogListSend';
      yield serializers.serialize(
        object.woodLogListSend,
        specifiedType: const FullType(WoodLogListSend),
      );
    }
    if (object.copiedFrom != null) {
      yield r'copiedFrom';
      yield serializers.serialize(
        object.copiedFrom,
        specifiedType: const FullType(WoodLogList),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(WoodLogListStatus),
      );
    }
    if (object.copies != null) {
      yield r'copies';
      yield serializers.serialize(
        object.copies,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogList object, {
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
    required WoodLogListBuilder result,
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'uploadedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.uploadedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creatorId = valueDes;
          break;
        case r'rewardType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RewardType),
          ) as RewardType;
          result.rewardType = valueDes;
          break;
        case r'rewardInCents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rewardInCents = valueDes;
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupId = valueDes;
          break;
        case r'editedFromWeb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.editedFromWeb = valueDes;
          break;
        case r'isSnapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSnapshot = valueDes;
          break;
        case r'statusId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'editedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.editedBy = valueDes;
          break;
        case r'woodLogListSendId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.woodLogListSendId = valueDes;
          break;
        case r'copiedFromId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.copiedFromId = valueDes;
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'creator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.creator.replace(valueDes);
          break;
        case r'logs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WoodLog)]),
          ) as BuiltList<WoodLog>?;
          if (valueDes == null) continue;
          result.logs.replace(valueDes);
          break;
        case r'woodLogListSend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogListSend),
          ) as WoodLogListSend;
          result.woodLogListSend.replace(valueDes);
          break;
        case r'copiedFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogList),
          ) as WoodLogList;
          result.copiedFrom.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogListStatus),
          ) as WoodLogListStatus;
          result.status.replace(valueDes);
          break;
        case r'copies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
          ) as BuiltList<WoodLogList>?;
          if (valueDes == null) continue;
          result.copies.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListBuilder();
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
