//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sortiment.g.dart';

/// Sortiment
///
/// Properties:
/// * [id]
/// * [ownerGroupGuid]
/// * [ownerUserGuid]
/// * [code]
/// * [name]
/// * [ownerGroup]
/// * [ownerUser]
@BuiltValue()
abstract class Sortiment implements Built<Sortiment, SortimentBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'ownerGroupGuid')
  String? get ownerGroupGuid;

  @BuiltValueField(wireName: r'ownerUserGuid')
  String? get ownerUserGuid;

  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'ownerUser')
  User? get ownerUser;

  Sortiment._();

  factory Sortiment([void updates(SortimentBuilder b)]) = _$Sortiment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortimentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Sortiment> get serializer => _$SortimentSerializer();
}

class _$SortimentSerializer implements PrimitiveSerializer<Sortiment> {
  @override
  final Iterable<Type> types = const [Sortiment, _$Sortiment];

  @override
  final String wireName = r'Sortiment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Sortiment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerGroupGuid != null) {
      yield r'ownerGroupGuid';
      yield serializers.serialize(
        object.ownerGroupGuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerUserGuid != null) {
      yield r'ownerUserGuid';
      yield serializers.serialize(
        object.ownerUserGuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.ownerUser != null) {
      yield r'ownerUser';
      yield serializers.serialize(
        object.ownerUser,
        specifiedType: const FullType(User),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Sortiment object, {
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
    required SortimentBuilder result,
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
        case r'ownerGroupGuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupGuid = valueDes;
          break;
        case r'ownerUserGuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerUserGuid = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'ownerUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.ownerUser.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Sortiment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortimentBuilder();
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
