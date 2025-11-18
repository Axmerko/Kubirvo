//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_list_status_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_status_dto.g.dart';

/// WoodLogListStatusDTO
///
/// Properties:
/// * [id]
/// * [customName]
/// * [isGlobal]
/// * [ownerGroupId]
/// * [statusType]
@BuiltValue()
abstract class WoodLogListStatusDTO
    implements Built<WoodLogListStatusDTO, WoodLogListStatusDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'customName')
  String? get customName;

  @BuiltValueField(wireName: r'isGlobal')
  bool? get isGlobal;

  @BuiltValueField(wireName: r'ownerGroupId')
  String? get ownerGroupId;

  @BuiltValueField(wireName: r'statusType')
  WoodLogListStatusType? get statusType;
  // enum statusTypeEnum {  Open,  Deleted,  Invoiced,  };

  WoodLogListStatusDTO._();

  factory WoodLogListStatusDTO([void updates(WoodLogListStatusDTOBuilder b)]) =
      _$WoodLogListStatusDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListStatusDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListStatusDTO> get serializer =>
      _$WoodLogListStatusDTOSerializer();
}

class _$WoodLogListStatusDTOSerializer
    implements PrimitiveSerializer<WoodLogListStatusDTO> {
  @override
  final Iterable<Type> types = const [
    WoodLogListStatusDTO,
    _$WoodLogListStatusDTO
  ];

  @override
  final String wireName = r'WoodLogListStatusDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListStatusDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.isGlobal != null) {
      yield r'isGlobal';
      yield serializers.serialize(
        object.isGlobal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ownerGroupId != null) {
      yield r'ownerGroupId';
      yield serializers.serialize(
        object.ownerGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusType != null) {
      yield r'statusType';
      yield serializers.serialize(
        object.statusType,
        specifiedType: const FullType(WoodLogListStatusType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListStatusDTO object, {
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
    required WoodLogListStatusDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'isGlobal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGlobal = valueDes;
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerGroupId = valueDes;
          break;
        case r'statusType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogListStatusType),
          ) as WoodLogListStatusType;
          result.statusType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListStatusDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListStatusDTOBuilder();
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
