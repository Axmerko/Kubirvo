//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/wood_log_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_send.g.dart';

/// WoodLogListSend
///
/// Properties:
/// * [creatorId]
/// * [id]
/// * [email]
/// * [createdAt]
/// * [creator]
/// * [woodLogLists]
@BuiltValue()
abstract class WoodLogListSend
    implements Built<WoodLogListSend, WoodLogListSendBuilder> {
  @BuiltValueField(wireName: r'creatorId')
  String get creatorId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'creator')
  User? get creator;

  @BuiltValueField(wireName: r'woodLogLists')
  BuiltList<WoodLogList>? get woodLogLists;

  WoodLogListSend._();

  factory WoodLogListSend([void updates(WoodLogListSendBuilder b)]) =
      _$WoodLogListSend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListSendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListSend> get serializer =>
      _$WoodLogListSendSerializer();
}

class _$WoodLogListSendSerializer
    implements PrimitiveSerializer<WoodLogListSend> {
  @override
  final Iterable<Type> types = const [WoodLogListSend, _$WoodLogListSend];

  @override
  final String wireName = r'WoodLogListSend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListSend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'creatorId';
    yield serializers.serialize(
      object.creatorId,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.creator != null) {
      yield r'creator';
      yield serializers.serialize(
        object.creator,
        specifiedType: const FullType(User),
      );
    }
    if (object.woodLogLists != null) {
      yield r'woodLogLists';
      yield serializers.serialize(
        object.woodLogLists,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListSend object, {
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
    required WoodLogListSendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creatorId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'creator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.creator.replace(valueDes);
          break;
        case r'woodLogLists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WoodLogList)]),
          ) as BuiltList<WoodLogList>?;
          if (valueDes == null) continue;
          result.woodLogLists.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListSend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListSendBuilder();
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
