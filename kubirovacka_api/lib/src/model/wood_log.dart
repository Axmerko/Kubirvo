//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/wood_log_type.dart';
import 'package:kubirovacka_api/src/model/wood_type.dart';
import 'package:kubirovacka_api/src/model/npgsql_point.dart';
import 'package:kubirovacka_api/src/model/wood_log_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log.g.dart';

/// WoodLog
///
/// Properties:
/// * [woodLogType]
/// * [volume]
/// * [isRhizome]
/// * [number]
/// * [woodType]
/// * [quality]
/// * [logsListId]
/// * [id]
/// * [length]
/// * [diameter]
/// * [fsdu]
/// * [location]
/// * [addedAt]
/// * [rawCategory]
/// * [woodLogList]
@BuiltValue()
abstract class WoodLog implements Built<WoodLog, WoodLogBuilder> {
  @BuiltValueField(wireName: r'woodLogType')
  WoodLogType get woodLogType;
  // enum woodLogTypeEnum {  Log,  Raw,  LogUpRight,  LogWithOutBark,  };

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

  @BuiltValueField(wireName: r'logsListId')
  String get logsListId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'length')
  double? get length;

  @BuiltValueField(wireName: r'diameter')
  double? get diameter;

  @BuiltValueField(wireName: r'fsdu')
  String? get fsdu;

  @BuiltValueField(wireName: r'location')
  NpgsqlPoint? get location;

  @BuiltValueField(wireName: r'addedAt')
  DateTime? get addedAt;

  @BuiltValueField(wireName: r'rawCategory')
  int? get rawCategory;

  @BuiltValueField(wireName: r'woodLogList')
  WoodLogList? get woodLogList;

  WoodLog._();

  factory WoodLog([void updates(WoodLogBuilder b)]) = _$WoodLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WoodLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WoodLog> get serializer => _$WoodLogSerializer();
}

class _$WoodLogSerializer implements PrimitiveSerializer<WoodLog> {
  @override
  final Iterable<Type> types = const [WoodLog, _$WoodLog];

  @override
  final String wireName = r'WoodLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WoodLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'woodLogType';
    yield serializers.serialize(
      object.woodLogType,
      specifiedType: const FullType(WoodLogType),
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
    yield r'logsListId';
    yield serializers.serialize(
      object.logsListId,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.diameter != null) {
      yield r'diameter';
      yield serializers.serialize(
        object.diameter,
        specifiedType: const FullType.nullable(double),
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
    if (object.woodLogList != null) {
      yield r'woodLogList';
      yield serializers.serialize(
        object.woodLogList,
        specifiedType: const FullType(WoodLogList),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WoodLog object, {
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
    required WoodLogBuilder result,
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
        case r'logsListId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logsListId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.length = valueDes;
          break;
        case r'diameter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.diameter = valueDes;
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
        case r'woodLogList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WoodLogList),
          ) as WoodLogList;
          result.woodLogList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WoodLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WoodLogBuilder();
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
