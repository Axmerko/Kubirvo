//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/grid_filter_query.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grid_query_dto.g.dart';

/// GridQueryDTO
///
/// Properties:
/// * [sort]
/// * [order]
/// * [limit]
/// * [page]
/// * [filterQuery]
@BuiltValue()
abstract class GridQueryDTO
    implements Built<GridQueryDTO, GridQueryDTOBuilder> {
  @BuiltValueField(wireName: r'sort')
  String? get sort;

  @BuiltValueField(wireName: r'order')
  String? get order;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'filterQuery')
  GridFilterQuery? get filterQuery;

  GridQueryDTO._();

  factory GridQueryDTO([void updates(GridQueryDTOBuilder b)]) = _$GridQueryDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GridQueryDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GridQueryDTO> get serializer => _$GridQueryDTOSerializer();
}

class _$GridQueryDTOSerializer implements PrimitiveSerializer<GridQueryDTO> {
  @override
  final Iterable<Type> types = const [GridQueryDTO, _$GridQueryDTO];

  @override
  final String wireName = r'GridQueryDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GridQueryDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sort != null) {
      yield r'sort';
      yield serializers.serialize(
        object.sort,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.filterQuery != null) {
      yield r'filterQuery';
      yield serializers.serialize(
        object.filterQuery,
        specifiedType: const FullType(GridFilterQuery),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GridQueryDTO object, {
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
    required GridQueryDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sort = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'filterQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GridFilterQuery),
          ) as GridFilterQuery;
          result.filterQuery.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GridQueryDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GridQueryDTOBuilder();
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
