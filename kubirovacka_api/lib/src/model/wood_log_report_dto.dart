//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_report_dto.g.dart';

/// WoodLogReportDTO
///
/// Properties:
/// * [number]
/// * [wood]
/// * [length]
/// * [diameter]
/// * [sortiment]
/// * [volume]
/// * [isRhizome]
/// * [fsdu]
@BuiltValue()
abstract class WoodLogReportDTO
    implements Built<WoodLogReportDTO, WoodLogReportDTOBuilder> {
  @BuiltValueField(wireName: r'number')
  String? get number;

  @BuiltValueField(wireName: r'wood')
  String? get wood;

  @BuiltValueField(wireName: r'length')
  String? get length;

  @BuiltValueField(wireName: r'diameter')
  String? get diameter;

  @BuiltValueField(wireName: r'sortiment')
  String? get sortiment;

  @BuiltValueField(wireName: r'volume')
  double? get volume;

  @BuiltValueField(wireName: r'isRhizome')
  bool? get isRhizome;

  @BuiltValueField(wireName: r'fsdu')
  String? get fsdu;

  WoodLogReportDTO._();

  factory WoodLogReportDTO([void updates(WoodLogReportDTOBuilder b)]) =
      _$WoodLogReportDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogReportDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogReportDTO> get serializer =>
      _$WoodLogReportDTOSerializer();
}

class _$WoodLogReportDTOSerializer
    implements PrimitiveSerializer<WoodLogReportDTO> {
  @override
  final Iterable<Type> types = const [WoodLogReportDTO, _$WoodLogReportDTO];

  @override
  final String wireName = r'WoodLogReportDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogReportDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wood != null) {
      yield r'wood';
      yield serializers.serialize(
        object.wood,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.diameter != null) {
      yield r'diameter';
      yield serializers.serialize(
        object.diameter,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sortiment != null) {
      yield r'sortiment';
      yield serializers.serialize(
        object.sortiment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType(double),
      );
    }
    if (object.isRhizome != null) {
      yield r'isRhizome';
      yield serializers.serialize(
        object.isRhizome,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fsdu != null) {
      yield r'fsdu';
      yield serializers.serialize(
        object.fsdu,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogReportDTO object, {
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
    required WoodLogReportDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.number = valueDes;
          break;
        case r'wood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wood = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.length = valueDes;
          break;
        case r'diameter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.diameter = valueDes;
          break;
        case r'sortiment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortiment = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.volume = valueDes;
          break;
        case r'isRhizome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRhizome = valueDes;
          break;
        case r'fsdu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fsdu = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogReportDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogReportDTOBuilder();
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
