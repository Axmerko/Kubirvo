// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdType _$banner = const AdType._('banner');
const AdType _$fullscreen = const AdType._('fullscreen');

AdType _$valueOf(String name) {
  switch (name) {
    case 'banner':
      return _$banner;
    case 'fullscreen':
      return _$fullscreen;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AdType> _$values = BuiltSet<AdType>(const <AdType>[
  _$banner,
  _$fullscreen,
]);

class _$AdTypeMeta {
  const _$AdTypeMeta();
  AdType get banner => _$banner;
  AdType get fullscreen => _$fullscreen;
  AdType valueOf(String name) => _$valueOf(name);
  BuiltSet<AdType> get values => _$values;
}

abstract class _$AdTypeMixin {
  // ignore: non_constant_identifier_names
  _$AdTypeMeta get AdType => const _$AdTypeMeta();
}

Serializer<AdType> _$adTypeSerializer = _$AdTypeSerializer();

class _$AdTypeSerializer implements PrimitiveSerializer<AdType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'banner': 'Banner',
    'fullscreen': 'Fullscreen',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Banner': 'banner',
    'Fullscreen': 'fullscreen',
  };

  @override
  final Iterable<Type> types = const <Type>[AdType];
  @override
  final String wireName = 'AdType';

  @override
  Object serialize(Serializers serializers, AdType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AdType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AdType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
