//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_type.g.dart';

class GroupType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Default')
  static const GroupType default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'DefaultCompany')
  static const GroupType defaultCompany = _$defaultCompany;

  static Serializer<GroupType> get serializer => _$groupTypeSerializer;

  const GroupType._(String name) : super(name);

  static BuiltSet<GroupType> get values => _$values;
  static GroupType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class GroupTypeMixin = Object with _$GroupTypeMixin;
