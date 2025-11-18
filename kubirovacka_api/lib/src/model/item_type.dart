//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_type.g.dart';

class ItemType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ITEM')
  static const ItemType ITEM = _$ITEM;
  @BuiltValueEnumConst(wireName: r'DISCOUNT')
  static const ItemType DISCOUNT = _$DISCOUNT;
  @BuiltValueEnumConst(wireName: r'DELIVERY')
  static const ItemType DELIVERY = _$DELIVERY;
  @BuiltValueEnumConst(wireName: r'POSTAGE')
  static const ItemType POSTAGE = _$POSTAGE;

  static Serializer<ItemType> get serializer => _$itemTypeSerializer;

  const ItemType._(String name) : super(name);

  static BuiltSet<ItemType> get values => _$values;
  static ItemType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ItemTypeMixin = Object with _$ItemTypeMixin;
