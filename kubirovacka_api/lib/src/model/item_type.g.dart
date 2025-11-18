// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ItemType _$ITEM = const ItemType._('ITEM');
const ItemType _$DISCOUNT = const ItemType._('DISCOUNT');
const ItemType _$DELIVERY = const ItemType._('DELIVERY');
const ItemType _$POSTAGE = const ItemType._('POSTAGE');

ItemType _$valueOf(String name) {
  switch (name) {
    case 'ITEM':
      return _$ITEM;
    case 'DISCOUNT':
      return _$DISCOUNT;
    case 'DELIVERY':
      return _$DELIVERY;
    case 'POSTAGE':
      return _$POSTAGE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ItemType> _$values = BuiltSet<ItemType>(const <ItemType>[
  _$ITEM,
  _$DISCOUNT,
  _$DELIVERY,
  _$POSTAGE,
]);

class _$ItemTypeMeta {
  const _$ItemTypeMeta();
  ItemType get ITEM => _$ITEM;
  ItemType get DISCOUNT => _$DISCOUNT;
  ItemType get DELIVERY => _$DELIVERY;
  ItemType get POSTAGE => _$POSTAGE;
  ItemType valueOf(String name) => _$valueOf(name);
  BuiltSet<ItemType> get values => _$values;
}

abstract class _$ItemTypeMixin {
  // ignore: non_constant_identifier_names
  _$ItemTypeMeta get ItemType => const _$ItemTypeMeta();
}

Serializer<ItemType> _$itemTypeSerializer = _$ItemTypeSerializer();

class _$ItemTypeSerializer implements PrimitiveSerializer<ItemType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ITEM': 'ITEM',
    'DISCOUNT': 'DISCOUNT',
    'DELIVERY': 'DELIVERY',
    'POSTAGE': 'POSTAGE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ITEM': 'ITEM',
    'DISCOUNT': 'DISCOUNT',
    'DELIVERY': 'DELIVERY',
    'POSTAGE': 'POSTAGE',
  };

  @override
  final Iterable<Type> types = const <Type>[ItemType];
  @override
  final String wireName = 'ItemType';

  @override
  Object serialize(Serializers serializers, ItemType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ItemType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ItemType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
