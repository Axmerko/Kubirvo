//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_quality_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_quality_dto_grid_dto.g.dart';

/// WoodQualityDTOGridDTO
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class WoodQualityDTOGridDTO
    implements Built<WoodQualityDTOGridDTO, WoodQualityDTOGridDTOBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<WoodQualityDTO>? get items;

  @BuiltValueField(wireName: r'total')
  int? get total;

  WoodQualityDTOGridDTO._();

  factory WoodQualityDTOGridDTO(
      [void updates(WoodQualityDTOGridDTOBuilder b)]) = _$WoodQualityDTOGridDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodQualityDTOGridDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodQualityDTOGridDTO> get serializer =>
      _$WoodQualityDTOGridDTOSerializer();
}

class _$WoodQualityDTOGridDTOSerializer
    implements PrimitiveSerializer<WoodQualityDTOGridDTO> {
  @override
  final Iterable<Type> types = const [
    WoodQualityDTOGridDTO,
    _$WoodQualityDTOGridDTO
  ];

  @override
  final String wireName = r'WoodQualityDTOGridDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodQualityDTOGridDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(WoodQualityDTO)]),
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
    WoodQualityDTOGridDTO object, {
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
    required WoodQualityDTOGridDTOBuilder result,
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
                const FullType.nullable(BuiltList, [FullType(WoodQualityDTO)]),
          ) as BuiltList<WoodQualityDTO>?;
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
  WoodQualityDTOGridDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodQualityDTOGridDTOBuilder();
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
