//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_stat_dto.g.dart';

/// WoodLogListStatDTO
///
/// Properties:
/// * [value]
@BuiltValue()
abstract class WoodLogListStatDTO
    implements Built<WoodLogListStatDTO, WoodLogListStatDTOBuilder> {
  @BuiltValueField(wireName: r'value')
  double? get value;

  WoodLogListStatDTO._();

  factory WoodLogListStatDTO([void updates(WoodLogListStatDTOBuilder b)]) =
      _$WoodLogListStatDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListStatDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListStatDTO> get serializer =>
      _$WoodLogListStatDTOSerializer();
}

class _$WoodLogListStatDTOSerializer
    implements PrimitiveSerializer<WoodLogListStatDTO> {
  @override
  final Iterable<Type> types = const [WoodLogListStatDTO, _$WoodLogListStatDTO];

  @override
  final String wireName = r'WoodLogListStatDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListStatDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListStatDTO object, {
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
    required WoodLogListStatDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListStatDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListStatDTOBuilder();
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
