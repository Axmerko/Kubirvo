//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_play_subscription_state.g.dart';

class GooglePlaySubscriptionState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SubscriptionStateUnspecified')
  static const GooglePlaySubscriptionState subscriptionStateUnspecified =
      _$subscriptionStateUnspecified;
  @BuiltValueEnumConst(wireName: r'SubscriptionStatePending')
  static const GooglePlaySubscriptionState subscriptionStatePending =
      _$subscriptionStatePending;
  @BuiltValueEnumConst(wireName: r'SubscriptionStateActive')
  static const GooglePlaySubscriptionState subscriptionStateActive =
      _$subscriptionStateActive;
  @BuiltValueEnumConst(wireName: r'SubscriptionStatePaused')
  static const GooglePlaySubscriptionState subscriptionStatePaused =
      _$subscriptionStatePaused;
  @BuiltValueEnumConst(wireName: r'SubscriptionStateInGracePeriod')
  static const GooglePlaySubscriptionState subscriptionStateInGracePeriod =
      _$subscriptionStateInGracePeriod;
  @BuiltValueEnumConst(wireName: r'SubscriptionStateOnHold')
  static const GooglePlaySubscriptionState subscriptionStateOnHold =
      _$subscriptionStateOnHold;
  @BuiltValueEnumConst(wireName: r'SubscriptionStateCanceled')
  static const GooglePlaySubscriptionState subscriptionStateCanceled =
      _$subscriptionStateCanceled;
  @BuiltValueEnumConst(wireName: r'SubscriptionStateExpired')
  static const GooglePlaySubscriptionState subscriptionStateExpired =
      _$subscriptionStateExpired;

  static Serializer<GooglePlaySubscriptionState> get serializer =>
      _$googlePlaySubscriptionStateSerializer;

  const GooglePlaySubscriptionState._(String name) : super(name);

  static BuiltSet<GooglePlaySubscriptionState> get values => _$values;
  static GooglePlaySubscriptionState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class GooglePlaySubscriptionStateMixin = Object
    with _$GooglePlaySubscriptionStateMixin;
