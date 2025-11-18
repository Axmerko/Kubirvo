//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/grid_filter_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grid_filter_query.g.dart';

/// GridFilterQuery
///
/// Properties:
/// * [search]
/// * [rules]
@BuiltValue()
abstract class GridFilterQuery
    implements Built<GridFilterQuery, GridFilterQueryBuilder> {
  @BuiltValueField(wireName: r'search')
  String? get search;

  @BuiltValueField(wireName: r'rules')
  BuiltList<GridFilterRule>? get rules;

  GridFilterQuery._();

  factory GridFilterQuery([void updates(GridFilterQueryBuilder b)]) =
      _$GridFilterQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GridFilterQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GridFilterQuery> get serializer =>
      _$GridFilterQuerySerializer();
}

class _$GridFilterQuerySerializer
    implements PrimitiveSerializer<GridFilterQuery> {
  @override
  final Iterable<Type> types = const [GridFilterQuery, _$GridFilterQuery];

  @override
  final String wireName = r'GridFilterQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GridFilterQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(GridFilterRule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GridFilterQuery object, {
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
    required GridFilterQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.search = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(GridFilterRule)]),
          ) as BuiltList<GridFilterRule>?;
          if (valueDes == null) continue;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GridFilterQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GridFilterQueryBuilder();
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
