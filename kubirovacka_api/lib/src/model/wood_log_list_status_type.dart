//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wood_log_list_status_type.g.dart';

class WoodLogListStatusType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Open')
  static const WoodLogListStatusType open = _$open;
  @BuiltValueEnumConst(wireName: r'Deleted')
  static const WoodLogListStatusType deleted = _$deleted;
  @BuiltValueEnumConst(wireName: r'Invoiced')
  static const WoodLogListStatusType invoiced = _$invoiced;

  static Serializer<WoodLogListStatusType> get serializer =>
      _$woodLogListStatusTypeSerializer;

  const WoodLogListStatusType._(String name) : super(name);

  static BuiltSet<WoodLogListStatusType> get values => _$values;
  static WoodLogListStatusType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WoodLogListStatusTypeMixin = Object
    with _$WoodLogListStatusTypeMixin;
