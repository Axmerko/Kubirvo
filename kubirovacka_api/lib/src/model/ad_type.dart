//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_type.g.dart';

class AdType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Banner')
  static const AdType banner = _$banner;
  @BuiltValueEnumConst(wireName: r'Fullscreen')
  static const AdType fullscreen = _$fullscreen;

  static Serializer<AdType> get serializer => _$adTypeSerializer;

  const AdType._(String name) : super(name);

  static BuiltSet<AdType> get values => _$values;
  static AdType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AdTypeMixin = Object with _$AdTypeMixin;
