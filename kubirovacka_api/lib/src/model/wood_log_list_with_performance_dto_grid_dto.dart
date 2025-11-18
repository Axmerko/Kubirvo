//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/wood_log_list_with_performance_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_with_performance_dto_grid_dto.g.dart';

/// WoodLogListWithPerformanceDTOGridDTO
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class WoodLogListWithPerformanceDTOGridDTO
    implements
        Built<WoodLogListWithPerformanceDTOGridDTO,
            WoodLogListWithPerformanceDTOGridDTOBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<WoodLogListWithPerformanceDTO>? get items;

  @BuiltValueField(wireName: r'total')
  int? get total;

  WoodLogListWithPerformanceDTOGridDTO._();

  factory WoodLogListWithPerformanceDTOGridDTO(
          [void updates(WoodLogListWithPerformanceDTOGridDTOBuilder b)]) =
      _$WoodLogListWithPerformanceDTOGridDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListWithPerformanceDTOGridDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListWithPerformanceDTOGridDTO> get serializer =>
      _$WoodLogListWithPerformanceDTOGridDTOSerializer();
}

class _$WoodLogListWithPerformanceDTOGridDTOSerializer
    implements PrimitiveSerializer<WoodLogListWithPerformanceDTOGridDTO> {
  @override
  final Iterable<Type> types = const [
    WoodLogListWithPerformanceDTOGridDTO,
    _$WoodLogListWithPerformanceDTOGridDTO
  ];

  @override
  final String wireName = r'WoodLogListWithPerformanceDTOGridDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListWithPerformanceDTOGridDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(WoodLogListWithPerformanceDTO)]),
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
    WoodLogListWithPerformanceDTOGridDTO object, {
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
    required WoodLogListWithPerformanceDTOGridDTOBuilder result,
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
                BuiltList, [FullType(WoodLogListWithPerformanceDTO)]),
          ) as BuiltList<WoodLogListWithPerformanceDTO>?;
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
  WoodLogListWithPerformanceDTOGridDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListWithPerformanceDTOGridDTOBuilder();
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
