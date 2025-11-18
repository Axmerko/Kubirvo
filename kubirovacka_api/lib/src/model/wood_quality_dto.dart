//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_quality_dto.g.dart';

/// WoodQualityDTO
///
/// Properties:
/// * [quality]
/// * [name]
/// * [disabled]
@BuiltValue()
abstract class WoodQualityDTO
    implements Built<WoodQualityDTO, WoodQualityDTOBuilder> {
  @BuiltValueField(wireName: r'quality')
  int get quality;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'disabled')
  bool get disabled;

  WoodQualityDTO._();

  factory WoodQualityDTO([void updates(WoodQualityDTOBuilder b)]) =
      _$WoodQualityDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodQualityDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodQualityDTO> get serializer =>
      _$WoodQualityDTOSerializer();
}

class _$WoodQualityDTOSerializer
    implements PrimitiveSerializer<WoodQualityDTO> {
  @override
  final Iterable<Type> types = const [WoodQualityDTO, _$WoodQualityDTO];

  @override
  final String wireName = r'WoodQualityDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodQualityDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quality';
    yield serializers.serialize(
      object.quality,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'disabled';
    yield serializers.serialize(
      object.disabled,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodQualityDTO object, {
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
    required WoodQualityDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quality = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodQualityDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodQualityDTOBuilder();
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
