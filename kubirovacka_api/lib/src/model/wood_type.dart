//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_type.g.dart';

class WoodType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'None')
  static const WoodType none = _$none;
  @BuiltValueEnumConst(wireName: r'Spruce')
  static const WoodType spruce = _$spruce;
  @BuiltValueEnumConst(wireName: r'Pine')
  static const WoodType pine = _$pine;
  @BuiltValueEnumConst(wireName: r'Larch')
  static const WoodType larch = _$larch;
  @BuiltValueEnumConst(wireName: r'Beech')
  static const WoodType beech = _$beech;
  @BuiltValueEnumConst(wireName: r'Oak')
  static const WoodType oak = _$oak;
  @BuiltValueEnumConst(wireName: r'Maple')
  static const WoodType maple = _$maple;
  @BuiltValueEnumConst(wireName: r'Ash')
  static const WoodType ash = _$ash;
  @BuiltValueEnumConst(wireName: r'Fir')
  static const WoodType fir = _$fir;
  @BuiltValueEnumConst(wireName: r'Hornbeam')
  static const WoodType hornbeam = _$hornbeam;
  @BuiltValueEnumConst(wireName: r'Aspen')
  static const WoodType aspen = _$aspen;
  @BuiltValueEnumConst(wireName: r'Alder')
  static const WoodType alder = _$alder;
  @BuiltValueEnumConst(wireName: r'Birch')
  static const WoodType birch = _$birch;
  @BuiltValueEnumConst(wireName: r'Linden')
  static const WoodType linden = _$linden;
  @BuiltValueEnumConst(wireName: r'Willow')
  static const WoodType willow = _$willow;
  @BuiltValueEnumConst(wireName: r'Poplar')
  static const WoodType poplar = _$poplar;
  @BuiltValueEnumConst(wireName: r'Acacia')
  static const WoodType acacia = _$acacia;
  @BuiltValueEnumConst(wireName: r'Elm')
  static const WoodType elm = _$elm;

  static Serializer<WoodType> get serializer => _$woodTypeSerializer;

  const WoodType._(String name) : super(name);

  static BuiltSet<WoodType> get values => _$values;
  static WoodType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WoodTypeMixin = Object with _$WoodTypeMixin;
