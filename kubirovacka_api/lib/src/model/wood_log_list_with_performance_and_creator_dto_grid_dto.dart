//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_list_with_performance_and_creator_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_with_performance_and_creator_dto_grid_dto.g.dart';

/// WoodLogListWithPerformanceAndCreatorDTOGridDTO
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class WoodLogListWithPerformanceAndCreatorDTOGridDTO
    implements
        Built<WoodLogListWithPerformanceAndCreatorDTOGridDTO,
            WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<WoodLogListWithPerformanceAndCreatorDTO>? get items;

  @BuiltValueField(wireName: r'total')
  int? get total;

  WoodLogListWithPerformanceAndCreatorDTOGridDTO._();

  factory WoodLogListWithPerformanceAndCreatorDTOGridDTO(
          [void updates(
              WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder b)]) =
      _$WoodLogListWithPerformanceAndCreatorDTOGridDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListWithPerformanceAndCreatorDTOGridDTO>
      get serializer =>
          _$WoodLogListWithPerformanceAndCreatorDTOGridDTOSerializer();
}

class _$WoodLogListWithPerformanceAndCreatorDTOGridDTOSerializer
    implements
        PrimitiveSerializer<WoodLogListWithPerformanceAndCreatorDTOGridDTO> {
  @override
  final Iterable<Type> types = const [
    WoodLogListWithPerformanceAndCreatorDTOGridDTO,
    _$WoodLogListWithPerformanceAndCreatorDTOGridDTO
  ];

  @override
  final String wireName = r'WoodLogListWithPerformanceAndCreatorDTOGridDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListWithPerformanceAndCreatorDTOGridDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(WoodLogListWithPerformanceAndCreatorDTO)]),
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
    WoodLogListWithPerformanceAndCreatorDTOGridDTO object, {
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
    required WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(WoodLogListWithPerformanceAndCreatorDTO)]),
          ) as BuiltList<WoodLogListWithPerformanceAndCreatorDTO>?;
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
  WoodLogListWithPerformanceAndCreatorDTOGridDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder();
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
