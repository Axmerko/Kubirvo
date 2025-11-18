//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_type.dart';
import 'package:kubirovacka_api/src/model/wood_type.dart';
import 'package:kubirovacka_api/src/model/npgsql_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_dto.g.dart';

/// WoodLogDTO
///
/// Properties:
/// * [woodLogType]
/// * [length]
/// * [diameter]
/// * [volume]
/// * [isRhizome]
/// * [number]
/// * [woodType]
/// * [quality]
/// * [qualityName]
/// * [fsdu]
/// * [location]
/// * [addedAt]
/// * [rawCategory]
/// * [position]
@BuiltValue()
abstract class WoodLogDTO implements Built<WoodLogDTO, WoodLogDTOBuilder> {
  @BuiltValueField(wireName: r'woodLogType')
  WoodLogType get woodLogType;
  // enum woodLogTypeEnum {  Log,  Raw,  LogUpRight,  LogWithOutBark,  };

  @BuiltValueField(wireName: r'length')
  double get length;

  @BuiltValueField(wireName: r'diameter')
  double get diameter;

  @BuiltValueField(wireName: r'volume')
  double get volume;

  @BuiltValueField(wireName: r'isRhizome')
  bool get isRhizome;

  @BuiltValueField(wireName: r'number')
  int get number;

  @BuiltValueField(wireName: r'woodType')
  WoodType get woodType;
  // enum woodTypeEnum {  None,  Spruce,  Pine,  Larch,  Beech,  Oak,  Maple,  Ash,  Fir,  Hornbeam,  Aspen,  Alder,  Birch,  Linden,  Willow,  Poplar,  Acacia,  Elm,  };

  @BuiltValueField(wireName: r'quality')
  int get quality;

  @BuiltValueField(wireName: r'qualityName')
  String? get qualityName;

  @BuiltValueField(wireName: r'fsdu')
  String? get fsdu;

  @BuiltValueField(wireName: r'location')
  NpgsqlPoint? get location;

  @BuiltValueField(wireName: r'addedAt')
  DateTime? get addedAt;

  @BuiltValueField(wireName: r'rawCategory')
  int? get rawCategory;

  @BuiltValueField(wireName: r'position')
  int? get position;

  WoodLogDTO._();

  factory WoodLogDTO([void updates(WoodLogDTOBuilder b)]) = _$WoodLogDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLogDTO> get serializer => _$WoodLogDTOSerializer();
}

class _$WoodLogDTOSerializer implements PrimitiveSerializer<WoodLogDTO> {
  @override
  final Iterable<Type> types = const [WoodLogDTO, _$WoodLogDTO];

  @override
  final String wireName = r'WoodLogDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLogDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'woodLogType';
    yield serializers.serialize(
      object.woodLogType,
      specifiedType: const FullType(WoodLogType),
    );
    yield r'length';
    yield serializers.serialize(
      object.length,
      specifiedType: const FullType(double),
    );
    yield r'diameter';
    yield serializers.serialize(
      object.diameter,
      specifiedType: const FullType(double),
    );
    yield r'volume';
    yield serializers.serialize(
      object.volume,
      specifiedType: const FullType(double),
    );
    yield r'isRhizome';
    yield serializers.serialize(
      object.isRhizome,
      specifiedType: const FullType(bool),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(int),
    );
    yield r'woodType';
    yield serializers.serialize(
      object.woodType,
      specifiedType: const FullType(WoodType),
    );
    yield r'quality';
    yield serializers.serialize(
      object.quality,
      specifiedType: const FullType(int),
    );
    if (object.qualityName != null) {
      yield r'qualityName';
      yield serializers.serialize(
        object.qualityName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fsdu != null) {
      yield r'fsdu';
      yield serializers.serialize(
        object.fsdu,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(NpgsqlPoint),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.rawCategory != null) {
      yield r'rawCategory';
      yield serializers.serialize(
        object.rawCategory,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLogDTO object, {
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
    required WoodLogDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'woodLogType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogType),
          ) as WoodLogType;
          result.woodLogType = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.length = valueDes;
          break;
        case r'diameter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.diameter = valueDes;
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
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        case r'woodType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodType),
          ) as WoodType;
          result.woodType = valueDes;
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quality = valueDes;
          break;
        case r'qualityName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.qualityName = valueDes;
          break;
        case r'fsdu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fsdu = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NpgsqlPoint),
          ) as NpgsqlPoint;
          result.location.replace(valueDes);
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.addedAt = valueDes;
          break;
        case r'rawCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rawCategory = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLogDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogDTOBuilder();
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
