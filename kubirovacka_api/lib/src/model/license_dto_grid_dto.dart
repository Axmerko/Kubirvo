//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_dto_grid_dto.g.dart';

/// LicenseDTOGridDTO
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class LicenseDTOGridDTO
    implements Built<LicenseDTOGridDTO, LicenseDTOGridDTOBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<LicenseDTO>? get items;

  @BuiltValueField(wireName: r'total')
  int? get total;

  LicenseDTOGridDTO._();

  factory LicenseDTOGridDTO([void updates(LicenseDTOGridDTOBuilder b)]) =
      _$LicenseDTOGridDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseDTOGridDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseDTOGridDTO> get serializer =>
      _$LicenseDTOGridDTOSerializer();
}

class _$LicenseDTOGridDTOSerializer
    implements PrimitiveSerializer<LicenseDTOGridDTO> {
  @override
  final Iterable<Type> types = const [LicenseDTOGridDTO, _$LicenseDTOGridDTO];

  @override
  final String wireName = r'LicenseDTOGridDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseDTOGridDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(LicenseDTO)]),
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
    LicenseDTOGridDTO object, {
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
    required LicenseDTOGridDTOBuilder result,
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
                const FullType.nullable(BuiltList, [FullType(LicenseDTO)]),
          ) as BuiltList<LicenseDTO>?;
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
  LicenseDTOGridDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseDTOGridDTOBuilder();
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
