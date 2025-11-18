//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'npgsql_point.g.dart';

/// NpgsqlPoint
///
/// Properties:
/// * [x]
/// * [y]
@BuiltValue()
abstract class NpgsqlPoint implements Built<NpgsqlPoint, NpgsqlPointBuilder> {
  @BuiltValueField(wireName: r'x')
  double? get x;

  @BuiltValueField(wireName: r'y')
  double? get y;

  NpgsqlPoint._();

  factory NpgsqlPoint([void updates(NpgsqlPointBuilder b)]) = _$NpgsqlPoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NpgsqlPointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NpgsqlPoint> get serializer => _$NpgsqlPointSerializer();
}

class _$NpgsqlPointSerializer implements PrimitiveSerializer<NpgsqlPoint> {
  @override
  final Iterable<Type> types = const [NpgsqlPoint, _$NpgsqlPoint];

  @override
  final String wireName = r'NpgsqlPoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NpgsqlPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.x != null) {
      yield r'x';
      yield serializers.serialize(
        object.x,
        specifiedType: const FullType(double),
      );
    }
    if (object.y != null) {
      yield r'y';
      yield serializers.serialize(
        object.y,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NpgsqlPoint object, {
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
    required NpgsqlPointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.y = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NpgsqlPoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NpgsqlPointBuilder();
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
