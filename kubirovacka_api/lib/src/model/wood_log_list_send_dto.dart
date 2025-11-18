//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/reward_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/wood_log_dto.dart';
import 'package:kubirovacka_api/src/model/wood_log_list_status_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_send_dto.g.dart';

/// WoodLogListSendDTO
///
/// Properties:
/// * [name]
/// * [createdAt]
/// * [ownerGroupId]
/// * [logs]
/// * [id]
/// * [rewardType]
/// * [rewardInCents]
/// * [editedFromWeb]
/// * [updatedAt]
/// * [version]
/// * [statusDto]
/// * [volume]
/// * [earnings]
/// * [creatorId]
/// * [creatorEmail]
/// * [creatorFistName]
/// * [creatorLastName]
/// * [sharerId]
/// * [sharerFirstName]
/// * [sharerLastName]
/// * [sharerEmail]
/// * [accepted]
@BuiltValue()
abstract class WoodLogListSendDTO
    implements Built<WoodLogListSendDTO, WoodLogListSendDTOBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'ownerGroupId')
  String get ownerGroupId;

  @BuiltValueField(wireName: r'logs')
  BuiltList<WoodLogDTO> get logs;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'rewardType')
  RewardType? get rewardType;
  // enum rewardTypeEnum {  RewardForCubicMeter,  };

  @BuiltValueField(wireName: r'rewardInCents')
  int? get rewardInCents;

  @BuiltValueField(wireName: r'editedFromWeb')
  bool? get editedFromWeb;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'statusDto')
  WoodLogListStatusDTO? get statusDto;

  @BuiltValueField(wireName: r'volume')
  double? get volume;

  @BuiltValueField(wireName: r'earnings')
  double? get earnings;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'creatorEmail')
  String? get creatorEmail;

  @BuiltValueField(wireName: r'creatorFistName')
  String? get creatorFistName;

  @BuiltValueField(wireName: r'creatorLastName')
  String? get creatorLastName;

  @BuiltValueField(wireName: r'sharerId')
  String? get sharerId;

  @BuiltValueField(wireName: r'sharerFirstName')
  String? get sharerFirstName;

  @BuiltValueField(wireName: r'sharerLastName')
  String? get sharerLastName;

  @BuiltValueField(wireName: r'sharerEmail')
  String? get sharerEmail;

  @BuiltValueField(wireName: r'accepted')
  bool? get accepted;

  WoodLogListSendDTO._();

  factory WoodLogListSendDTO([void updates(WoodLogListSendDTOBuilder b)]) =
      _$WoodLogListSendDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListSendDTOBuilder b) =>
      b..editedFromWeb = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListSendDTO> get serializer =>
      _$WoodLogListSendDTOSerializer();
}

class _$WoodLogListSendDTOSerializer
    implements PrimitiveSerializer<WoodLogListSendDTO> {
  @override
  final Iterable<Type> types = const [WoodLogListSendDTO, _$WoodLogListSendDTO];

  @override
  final String wireName = r'WoodLogListSendDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListSendDTO object, {
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
    yield r'ownerGroupId';
    yield serializers.serialize(
      object.ownerGroupId,
      specifiedType: const FullType(String),
    );
    yield r'logs';
    yield serializers.serialize(
      object.logs,
      specifiedType: const FullType(BuiltList, [FullType(WoodLogDTO)]),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.rewardType != null) {
      yield r'rewardType';
      yield serializers.serialize(
        object.rewardType,
        specifiedType: const FullType(RewardType),
      );
    }
    if (object.rewardInCents != null) {
      yield r'rewardInCents';
      yield serializers.serialize(
        object.rewardInCents,
        specifiedType: const FullType(int),
      );
    }
    if (object.editedFromWeb != null) {
      yield r'editedFromWeb';
      yield serializers.serialize(
        object.editedFromWeb,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.statusDto != null) {
      yield r'statusDto';
      yield serializers.serialize(
        object.statusDto,
        specifiedType: const FullType(WoodLogListStatusDTO),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType(double),
      );
    }
    if (object.earnings != null) {
      yield r'earnings';
      yield serializers.serialize(
        object.earnings,
        specifiedType: const FullType(double),
      );
    }
    if (object.creatorId != null) {
      yield r'creatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType(String),
      );
    }
    if (object.creatorEmail != null) {
      yield r'creatorEmail';
      yield serializers.serialize(
        object.creatorEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creatorFistName != null) {
      yield r'creatorFistName';
      yield serializers.serialize(
        object.creatorFistName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creatorLastName != null) {
      yield r'creatorLastName';
      yield serializers.serialize(
        object.creatorLastName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sharerId != null) {
      yield r'sharerId';
      yield serializers.serialize(
        object.sharerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sharerFirstName != null) {
      yield r'sharerFirstName';
      yield serializers.serialize(
        object.sharerFirstName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sharerLastName != null) {
      yield r'sharerLastName';
      yield serializers.serialize(
        object.sharerLastName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sharerEmail != null) {
      yield r'sharerEmail';
      yield serializers.serialize(
        object.sharerEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accepted != null) {
      yield r'accepted';
      yield serializers.serialize(
        object.accepted,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListSendDTO object, {
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
    required WoodLogListSendDTOBuilder result,
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
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupId = valueDes;
          break;
        case r'logs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WoodLogDTO)]),
          ) as BuiltList<WoodLogDTO>;
          result.logs.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
        case r'editedFromWeb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.editedFromWeb = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'statusDto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogListStatusDTO),
          ) as WoodLogListStatusDTO;
          result.statusDto.replace(valueDes);
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.volume = valueDes;
          break;
        case r'earnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.earnings = valueDes;
          break;
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creatorId = valueDes;
          break;
        case r'creatorEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorEmail = valueDes;
          break;
        case r'creatorFistName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorFistName = valueDes;
          break;
        case r'creatorLastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorLastName = valueDes;
          break;
        case r'sharerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sharerId = valueDes;
          break;
        case r'sharerFirstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sharerFirstName = valueDes;
          break;
        case r'sharerLastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sharerLastName = valueDes;
          break;
        case r'sharerEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sharerEmail = valueDes;
          break;
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accepted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListSendDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListSendDTOBuilder();
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
