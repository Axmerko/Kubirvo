//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_summary_dto.g.dart';

/// WoodLogListSummaryDTO
///
/// Properties:
/// * [logsQuantity]
/// * [logsNumberOfRhizomes]
/// * [logsVolume]
/// * [rawsQuantity]
/// * [rawsNumberOfRhizomes]
/// * [rawsVolume]
/// * [averageWeightOfPiece]
/// * [averageWeightOfTree]
@BuiltValue()
abstract class WoodLogListSummaryDTO
    implements Built<WoodLogListSummaryDTO, WoodLogListSummaryDTOBuilder> {
  @BuiltValueField(wireName: r'logsQuantity')
  int? get logsQuantity;

  @BuiltValueField(wireName: r'logsNumberOfRhizomes')
  int? get logsNumberOfRhizomes;

  @BuiltValueField(wireName: r'logsVolume')
  double? get logsVolume;

  @BuiltValueField(wireName: r'rawsQuantity')
  int? get rawsQuantity;

  @BuiltValueField(wireName: r'rawsNumberOfRhizomes')
  int? get rawsNumberOfRhizomes;

  @BuiltValueField(wireName: r'rawsVolume')
  double? get rawsVolume;

  @BuiltValueField(wireName: r'averageWeightOfPiece')
  double? get averageWeightOfPiece;

  @BuiltValueField(wireName: r'averageWeightOfTree')
  double? get averageWeightOfTree;

  WoodLogListSummaryDTO._();

  factory WoodLogListSummaryDTO(
      [void updates(WoodLogListSummaryDTOBuilder b)]) = _$WoodLogListSummaryDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogListSummaryDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogListSummaryDTO> get serializer =>
      _$WoodLogListSummaryDTOSerializer();
}

class _$WoodLogListSummaryDTOSerializer
    implements PrimitiveSerializer<WoodLogListSummaryDTO> {
  @override
  final Iterable<Type> types = const [
    WoodLogListSummaryDTO,
    _$WoodLogListSummaryDTO
  ];

  @override
  final String wireName = r'WoodLogListSummaryDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogListSummaryDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.logsQuantity != null) {
      yield r'logsQuantity';
      yield serializers.serialize(
        object.logsQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.logsNumberOfRhizomes != null) {
      yield r'logsNumberOfRhizomes';
      yield serializers.serialize(
        object.logsNumberOfRhizomes,
        specifiedType: const FullType(int),
      );
    }
    if (object.logsVolume != null) {
      yield r'logsVolume';
      yield serializers.serialize(
        object.logsVolume,
        specifiedType: const FullType(double),
      );
    }
    if (object.rawsQuantity != null) {
      yield r'rawsQuantity';
      yield serializers.serialize(
        object.rawsQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.rawsNumberOfRhizomes != null) {
      yield r'rawsNumberOfRhizomes';
      yield serializers.serialize(
        object.rawsNumberOfRhizomes,
        specifiedType: const FullType(int),
      );
    }
    if (object.rawsVolume != null) {
      yield r'rawsVolume';
      yield serializers.serialize(
        object.rawsVolume,
        specifiedType: const FullType(double),
      );
    }
    if (object.averageWeightOfPiece != null) {
      yield r'averageWeightOfPiece';
      yield serializers.serialize(
        object.averageWeightOfPiece,
        specifiedType: const FullType(double),
      );
    }
    if (object.averageWeightOfTree != null) {
      yield r'averageWeightOfTree';
      yield serializers.serialize(
        object.averageWeightOfTree,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogListSummaryDTO object, {
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
    required WoodLogListSummaryDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'logsQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logsQuantity = valueDes;
          break;
        case r'logsNumberOfRhizomes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logsNumberOfRhizomes = valueDes;
          break;
        case r'logsVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.logsVolume = valueDes;
          break;
        case r'rawsQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rawsQuantity = valueDes;
          break;
        case r'rawsNumberOfRhizomes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rawsNumberOfRhizomes = valueDes;
          break;
        case r'rawsVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.rawsVolume = valueDes;
          break;
        case r'averageWeightOfPiece':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.averageWeightOfPiece = valueDes;
          break;
        case r'averageWeightOfTree':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.averageWeightOfTree = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogListSummaryDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogListSummaryDTOBuilder();
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
