//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/item_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_item.g.dart';

/// OrderItem
///
/// Properties:
/// * [name]
/// * [amount]
/// * [count]
/// * [vatRate]
/// * [itemType]
/// * [productURL]
/// * [ean]
@BuiltValue()
abstract class OrderItem implements Built<OrderItem, OrderItemBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'amount')
  int? get amount;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'vatRate')
  int? get vatRate;

  @BuiltValueField(wireName: r'itemType')
  ItemType? get itemType;
  // enum itemTypeEnum {  ITEM,  DISCOUNT,  DELIVERY,  POSTAGE,  };

  @BuiltValueField(wireName: r'productURL')
  String? get productURL;

  @BuiltValueField(wireName: r'ean')
  String? get ean;

  OrderItem._();

  factory OrderItem([void updates(OrderItemBuilder b)]) = _$OrderItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderItem> get serializer => _$OrderItemSerializer();
}

class _$OrderItemSerializer implements PrimitiveSerializer<OrderItem> {
  @override
  final Iterable<Type> types = const [OrderItem, _$OrderItem];

  @override
  final String wireName = r'OrderItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(int),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.vatRate != null) {
      yield r'vatRate';
      yield serializers.serialize(
        object.vatRate,
        specifiedType: const FullType(int),
      );
    }
    if (object.itemType != null) {
      yield r'itemType';
      yield serializers.serialize(
        object.itemType,
        specifiedType: const FullType(ItemType),
      );
    }
    if (object.productURL != null) {
      yield r'productURL';
      yield serializers.serialize(
        object.productURL,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ean != null) {
      yield r'ean';
      yield serializers.serialize(
        object.ean,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderItem object, {
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
    required OrderItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'vatRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vatRate = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemType),
          ) as ItemType;
          result.itemType = valueDes;
          break;
        case r'productURL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.productURL = valueDes;
          break;
        case r'ean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ean = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderItemBuilder();
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
