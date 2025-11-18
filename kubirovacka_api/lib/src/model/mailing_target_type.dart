//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mailing_target_type.g.dart';

class MailingTargetType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EveryConfirmedAddress')
  static const MailingTargetType everyConfirmedAddress =
      _$everyConfirmedAddress;
  @BuiltValueEnumConst(wireName: r'SpecificAddresses')
  static const MailingTargetType specificAddresses = _$specificAddresses;
  @BuiltValueEnumConst(wireName: r'PremiumUsers')
  static const MailingTargetType premiumUsers = _$premiumUsers;
  @BuiltValueEnumConst(wireName: r'NonPremiumUsers')
  static const MailingTargetType nonPremiumUsers = _$nonPremiumUsers;
  @BuiltValueEnumConst(wireName: r'ActiveUsers')
  static const MailingTargetType activeUsers = _$activeUsers;
  @BuiltValueEnumConst(wireName: r'InactiveUsers')
  static const MailingTargetType inactiveUsers = _$inactiveUsers;
  @BuiltValueEnumConst(wireName: r'Advertisers')
  static const MailingTargetType advertisers = _$advertisers;
  @BuiltValueEnumConst(wireName: r'EveryUnconfirmedAddress')
  static const MailingTargetType everyUnconfirmedAddress =
      _$everyUnconfirmedAddress;

  static Serializer<MailingTargetType> get serializer =>
      _$mailingTargetTypeSerializer;

  const MailingTargetType._(String name) : super(name);

  static BuiltSet<MailingTargetType> get values => _$values;
  static MailingTargetType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MailingTargetTypeMixin = Object with _$MailingTargetTypeMixin;
