//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user_profile_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_dto_grid_dto.g.dart';

/// UserProfileDTOGridDTO
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class UserProfileDTOGridDTO
    implements Built<UserProfileDTOGridDTO, UserProfileDTOGridDTOBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<UserProfileDTO>? get items;

  @BuiltValueField(wireName: r'total')
  int? get total;

  UserProfileDTOGridDTO._();

  factory UserProfileDTOGridDTO(
      [void updates(UserProfileDTOGridDTOBuilder b)]) = _$UserProfileDTOGridDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileDTOGridDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileDTOGridDTO> get serializer =>
      _$UserProfileDTOGridDTOSerializer();
}

class _$UserProfileDTOGridDTOSerializer
    implements PrimitiveSerializer<UserProfileDTOGridDTO> {
  @override
  final Iterable<Type> types = const [
    UserProfileDTOGridDTO,
    _$UserProfileDTOGridDTO
  ];

  @override
  final String wireName = r'UserProfileDTOGridDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileDTOGridDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(UserProfileDTO)]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileDTOGridDTO object, {
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
    required UserProfileDTOGridDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(UserProfileDTO)]),
          ) as BuiltList<UserProfileDTO>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileDTOGridDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileDTOGridDTOBuilder();
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
