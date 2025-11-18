//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_type.g.dart';

class WoodLogType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Log')
  static const WoodLogType log = _$log;
  @BuiltValueEnumConst(wireName: r'Raw')
  static const WoodLogType raw = _$raw;
  @BuiltValueEnumConst(wireName: r'LogUpRight')
  static const WoodLogType logUpRight = _$logUpRight;
  @BuiltValueEnumConst(wireName: r'LogWithOutBark')
  static const WoodLogType logWithOutBark = _$logWithOutBark;

  static Serializer<WoodLogType> get serializer => _$woodLogTypeSerializer;

  const WoodLogType._(String name) : super(name);

  static BuiltSet<WoodLogType> get values => _$values;
  static WoodLogType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WoodLogTypeMixin = Object with _$WoodLogTypeMixin;
