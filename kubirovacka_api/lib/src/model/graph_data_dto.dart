//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'graph_data_dto.g.dart';

/// GraphDataDto
///
/// Properties:
/// * [graphValuesX]
/// * [graphValuesY]
@BuiltValue()
abstract class GraphDataDto
    implements Built<GraphDataDto, GraphDataDtoBuilder> {
  @BuiltValueField(wireName: r'graphValuesX')
  BuiltList<String>? get graphValuesX;

  @BuiltValueField(wireName: r'graphValuesY')
  BuiltList<double>? get graphValuesY;

  GraphDataDto._();

  factory GraphDataDto([void updates(GraphDataDtoBuilder b)]) = _$GraphDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GraphDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GraphDataDto> get serializer => _$GraphDataDtoSerializer();
}

class _$GraphDataDtoSerializer implements PrimitiveSerializer<GraphDataDto> {
  @override
  final Iterable<Type> types = const [GraphDataDto, _$GraphDataDto];

  @override
  final String wireName = r'GraphDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GraphDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graphValuesX != null) {
      yield r'graphValuesX';
      yield serializers.serialize(
        object.graphValuesX,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.graphValuesY != null) {
      yield r'graphValuesY';
      yield serializers.serialize(
        object.graphValuesY,
        specifiedType: const FullType.nullable(BuiltList, [FullType(double)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GraphDataDto object, {
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
    required GraphDataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graphValuesX':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.graphValuesX.replace(valueDes);
          break;
        case r'graphValuesY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(double)]),
          ) as BuiltList<double>?;
          if (valueDes == null) continue;
          result.graphValuesY.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GraphDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GraphDataDtoBuilder();
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
