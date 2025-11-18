// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WoodType _$none = const WoodType._('none');
const WoodType _$spruce = const WoodType._('spruce');
const WoodType _$pine = const WoodType._('pine');
const WoodType _$larch = const WoodType._('larch');
const WoodType _$beech = const WoodType._('beech');
const WoodType _$oak = const WoodType._('oak');
const WoodType _$maple = const WoodType._('maple');
const WoodType _$ash = const WoodType._('ash');
const WoodType _$fir = const WoodType._('fir');
const WoodType _$hornbeam = const WoodType._('hornbeam');
const WoodType _$aspen = const WoodType._('aspen');
const WoodType _$alder = const WoodType._('alder');
const WoodType _$birch = const WoodType._('birch');
const WoodType _$linden = const WoodType._('linden');
const WoodType _$willow = const WoodType._('willow');
const WoodType _$poplar = const WoodType._('poplar');
const WoodType _$acacia = const WoodType._('acacia');
const WoodType _$elm = const WoodType._('elm');

WoodType _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'spruce':
      return _$spruce;
    case 'pine':
      return _$pine;
    case 'larch':
      return _$larch;
    case 'beech':
      return _$beech;
    case 'oak':
      return _$oak;
    case 'maple':
      return _$maple;
    case 'ash':
      return _$ash;
    case 'fir':
      return _$fir;
    case 'hornbeam':
      return _$hornbeam;
    case 'aspen':
      return _$aspen;
    case 'alder':
      return _$alder;
    case 'birch':
      return _$birch;
    case 'linden':
      return _$linden;
    case 'willow':
      return _$willow;
    case 'poplar':
      return _$poplar;
    case 'acacia':
      return _$acacia;
    case 'elm':
      return _$elm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WoodType> _$values = BuiltSet<WoodType>(const <WoodType>[
  _$none,
  _$spruce,
  _$pine,
  _$larch,
  _$beech,
  _$oak,
  _$maple,
  _$ash,
  _$fir,
  _$hornbeam,
  _$aspen,
  _$alder,
  _$birch,
  _$linden,
  _$willow,
  _$poplar,
  _$acacia,
  _$elm,
]);

class _$WoodTypeMeta {
  const _$WoodTypeMeta();
  WoodType get none => _$none;
  WoodType get spruce => _$spruce;
  WoodType get pine => _$pine;
  WoodType get larch => _$larch;
  WoodType get beech => _$beech;
  WoodType get oak => _$oak;
  WoodType get maple => _$maple;
  WoodType get ash => _$ash;
  WoodType get fir => _$fir;
  WoodType get hornbeam => _$hornbeam;
  WoodType get aspen => _$aspen;
  WoodType get alder => _$alder;
  WoodType get birch => _$birch;
  WoodType get linden => _$linden;
  WoodType get willow => _$willow;
  WoodType get poplar => _$poplar;
  WoodType get acacia => _$acacia;
  WoodType get elm => _$elm;
  WoodType valueOf(String name) => _$valueOf(name);
  BuiltSet<WoodType> get values => _$values;
}

abstract class _$WoodTypeMixin {
  // ignore: non_constant_identifier_names
  _$WoodTypeMeta get WoodType => const _$WoodTypeMeta();
}

Serializer<WoodType> _$woodTypeSerializer = _$WoodTypeSerializer();

class _$WoodTypeSerializer implements PrimitiveSerializer<WoodType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'None',
    'spruce': 'Spruce',
    'pine': 'Pine',
    'larch': 'Larch',
    'beech': 'Beech',
    'oak': 'Oak',
    'maple': 'Maple',
    'ash': 'Ash',
    'fir': 'Fir',
    'hornbeam': 'Hornbeam',
    'aspen': 'Aspen',
    'alder': 'Alder',
    'birch': 'Birch',
    'linden': 'Linden',
    'willow': 'Willow',
    'poplar': 'Poplar',
    'acacia': 'Acacia',
    'elm': 'Elm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'None': 'none',
    'Spruce': 'spruce',
    'Pine': 'pine',
    'Larch': 'larch',
    'Beech': 'beech',
    'Oak': 'oak',
    'Maple': 'maple',
    'Ash': 'ash',
    'Fir': 'fir',
    'Hornbeam': 'hornbeam',
    'Aspen': 'aspen',
    'Alder': 'alder',
    'Birch': 'birch',
    'Linden': 'linden',
    'Willow': 'willow',
    'Poplar': 'poplar',
    'Acacia': 'acacia',
    'Elm': 'elm',
  };

  @override
  final Iterable<Type> types = const <Type>[WoodType];
  @override
  final String wireName = 'WoodType';

  @override
  Object serialize(Serializers serializers, WoodType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WoodType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WoodType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
