//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:kubirovacka_api/src/model/wood_log_list_status_type.dart';
import 'package:kubirovacka_api/src/model/wood_log_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_status.g.dart';

/// WoodLogListStatus
///
/// Properties:
/// * [isGlobal]
/// * [statusType]
/// * [id]
/// * [customName]
/// * [ownerGroupId]
/// * [ownerGroup]
/// * [lists]
@BuiltValue()
abstract class WoodLogListStatus
    implements Built<WoodLogListStatus, WoodLogListStatusBuilder> {
  @BuiltValueField(wireName: r'isGlobal')
  bool get isGlobal;

  @BuiltValueField(wireName: r'statusType')
  WoodLogListStatusType get statusType;
  // enum statusTypeEnum {  Open,  Deleted,  Invoiced,  };

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'customName')
  String? get customName;

  @BuiltValueField(wireName: r'ownerGroupId')
  String? get ownerGroupId;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'lists')
  BuiltList<WoodLogList>? get lists;

  WoodLogListStatus._();

  factory WoodLogListStatus([void updates(WoodLogListStatusBuilder b)]) =
      _$WoodLogListStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListStatus> get serializer =>
      _$WoodLogListStatusSerializer();
}

class _$WoodLogListStatusSerializer
    implements PrimitiveSerializer<WoodLogListStatus> {
  @override
  final Iterable<Type> types = const [WoodLogListStatus, _$WoodLogListStatus];

  @override
  final String wireName = r'WoodLogListStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'isGlobal';
    yield serializers.serialize(
      object.isGlobal,
      specifiedType: const FullType(bool),
    );
    yield r'statusType';
    yield serializers.serialize(
      object.statusType,
      specifiedType: const FullType(WoodLogListStatusType),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.customName != null) {
      yield r'customName';
      yield serializers.serialize(
        object.customName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ownerGroupId != null) {
      yield r'ownerGroupId';
      yield serializers.serialize(
        object.ownerGroupId,
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
    if (object.lists != null) {
      yield r'lists';
      yield serializers.serialize(
        object.lists,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListStatus object, {
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
    required WoodLogListStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isGlobal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGlobal = valueDes;
          break;
        case r'statusType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogListStatusType),
          ) as WoodLogListStatusType;
          result.statusType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'customName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customName = valueDes;
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerGroupId = valueDes;
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'lists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
          ) as BuiltList<WoodLogList>?;
          if (valueDes == null) continue;
          result.lists.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListStatusBuilder();
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
