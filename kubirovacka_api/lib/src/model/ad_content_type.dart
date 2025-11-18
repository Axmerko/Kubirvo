//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_content_type.g.dart';

class AdContentType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Image')
  static const AdContentType image = _$image;
  @BuiltValueEnumConst(wireName: r'Html')
  static const AdContentType html = _$html;

  static Serializer<AdContentType> get serializer => _$adContentTypeSerializer;

  const AdContentType._(String name) : super(name);

  static BuiltSet<AdContentType> get values => _$values;
  static AdContentType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AdContentTypeMixin = Object with _$AdContentTypeMixin;
