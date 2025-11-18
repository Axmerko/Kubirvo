//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_group_status.g.dart';

class UserGroupStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Status_Active')
  static const UserGroupStatus active = _$active;
  @BuiltValueEnumConst(wireName: r'Status_Disabled')
  static const UserGroupStatus disabled = _$disabled;

  static Serializer<UserGroupStatus> get serializer =>
      _$userGroupStatusSerializer;

  const UserGroupStatus._(String name) : super(name);

  static BuiltSet<UserGroupStatus> get values => _$values;
  static UserGroupStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class UserGroupStatusMixin = Object with _$UserGroupStatusMixin;
