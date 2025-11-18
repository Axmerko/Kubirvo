//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grid_filter_rule.g.dart';

/// GridFilterRule
///
/// Properties:
/// * [columnName]
/// * [value]
@BuiltValue()
abstract class GridFilterRule
    implements Built<GridFilterRule, GridFilterRuleBuilder> {
  @BuiltValueField(wireName: r'columnName')
  String? get columnName;

  @BuiltValueField(wireName: r'value')
  String? get value;

  GridFilterRule._();

  factory GridFilterRule([void updates(GridFilterRuleBuilder b)]) =
      _$GridFilterRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GridFilterRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GridFilterRule> get serializer =>
      _$GridFilterRuleSerializer();
}

class _$GridFilterRuleSerializer
    implements PrimitiveSerializer<GridFilterRule> {
  @override
  final Iterable<Type> types = const [GridFilterRule, _$GridFilterRule];

  @override
  final String wireName = r'GridFilterRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GridFilterRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.columnName != null) {
      yield r'columnName';
      yield serializers.serialize(
        object.columnName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GridFilterRule object, {
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
    required GridFilterRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'columnName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.columnName = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  GridFilterRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GridFilterRuleBuilder();
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
