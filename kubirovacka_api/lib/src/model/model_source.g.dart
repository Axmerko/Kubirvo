// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ModelSource _$android = const ModelSource._('android');
const ModelSource _$web = const ModelSource._('web');

ModelSource _$valueOf(String name) {
  switch (name) {
    case 'android':
      return _$android;
    case 'web':
      return _$web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ModelSource> _$values =
    BuiltSet<ModelSource>(const <ModelSource>[
  _$android,
  _$web,
]);

class _$ModelSourceMeta {
  const _$ModelSourceMeta();
  ModelSource get android => _$android;
  ModelSource get web => _$web;
  ModelSource valueOf(String name) => _$valueOf(name);
  BuiltSet<ModelSource> get values => _$values;
}

abstract class _$ModelSourceMixin {
  // ignore: non_constant_identifier_names
  _$ModelSourceMeta get ModelSource => const _$ModelSourceMeta();
}

Serializer<ModelSource> _$modelSourceSerializer = _$ModelSourceSerializer();

class _$ModelSourceSerializer implements PrimitiveSerializer<ModelSource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'android': 'Android',
    'web': 'Web',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Android': 'android',
    'Web': 'web',
  };

  @override
  final Iterable<Type> types = const <Type>[ModelSource];
  @override
  final String wireName = 'ModelSource';

  @override
  Object serialize(Serializers serializers, ModelSource object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ModelSource deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ModelSource.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
