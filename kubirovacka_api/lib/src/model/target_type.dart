//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'target_type.g.dart';

class TargetType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACCOUNT')
  static const TargetType ACCOUNT = _$ACCOUNT;
  @BuiltValueEnumConst(wireName: r'BANK_ACCOUNT')
  static const TargetType BANK_ACCOUNT = _$BANK_ACCOUNT;
  @BuiltValueEnumConst(wireName: r'COUPON')
  static const TargetType COUPON = _$COUPON;

  static Serializer<TargetType> get serializer => _$targetTypeSerializer;

  const TargetType._(String name) : super(name);

  static BuiltSet<TargetType> get values => _$values;
  static TargetType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TargetTypeMixin = Object with _$TargetTypeMixin;
