// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_content_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdContentType _$image = const AdContentType._('image');
const AdContentType _$html = const AdContentType._('html');

AdContentType _$valueOf(String name) {
  switch (name) {
    case 'image':
      return _$image;
    case 'html':
      return _$html;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AdContentType> _$values =
    BuiltSet<AdContentType>(const <AdContentType>[
  _$image,
  _$html,
]);

class _$AdContentTypeMeta {
  const _$AdContentTypeMeta();
  AdContentType get image => _$image;
  AdContentType get html => _$html;
  AdContentType valueOf(String name) => _$valueOf(name);
  BuiltSet<AdContentType> get values => _$values;
}

abstract class _$AdContentTypeMixin {
  // ignore: non_constant_identifier_names
  _$AdContentTypeMeta get AdContentType => const _$AdContentTypeMeta();
}

Serializer<AdContentType> _$adContentTypeSerializer =
    _$AdContentTypeSerializer();

class _$AdContentTypeSerializer implements PrimitiveSerializer<AdContentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'image': 'Image',
    'html': 'Html',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Image': 'image',
    'Html': 'html',
  };

  @override
  final Iterable<Type> types = const <Type>[AdContentType];
  @override
  final String wireName = 'AdContentType';

  @override
  Object serialize(Serializers serializers, AdContentType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AdContentType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AdContentType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
