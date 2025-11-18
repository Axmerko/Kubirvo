// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_play_subscription_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GooglePlaySubscriptionState _$subscriptionStateUnspecified =
    const GooglePlaySubscriptionState._('subscriptionStateUnspecified');
const GooglePlaySubscriptionState _$subscriptionStatePending =
    const GooglePlaySubscriptionState._('subscriptionStatePending');
const GooglePlaySubscriptionState _$subscriptionStateActive =
    const GooglePlaySubscriptionState._('subscriptionStateActive');
const GooglePlaySubscriptionState _$subscriptionStatePaused =
    const GooglePlaySubscriptionState._('subscriptionStatePaused');
const GooglePlaySubscriptionState _$subscriptionStateInGracePeriod =
    const GooglePlaySubscriptionState._('subscriptionStateInGracePeriod');
const GooglePlaySubscriptionState _$subscriptionStateOnHold =
    const GooglePlaySubscriptionState._('subscriptionStateOnHold');
const GooglePlaySubscriptionState _$subscriptionStateCanceled =
    const GooglePlaySubscriptionState._('subscriptionStateCanceled');
const GooglePlaySubscriptionState _$subscriptionStateExpired =
    const GooglePlaySubscriptionState._('subscriptionStateExpired');

GooglePlaySubscriptionState _$valueOf(String name) {
  switch (name) {
    case 'subscriptionStateUnspecified':
      return _$subscriptionStateUnspecified;
    case 'subscriptionStatePending':
      return _$subscriptionStatePending;
    case 'subscriptionStateActive':
      return _$subscriptionStateActive;
    case 'subscriptionStatePaused':
      return _$subscriptionStatePaused;
    case 'subscriptionStateInGracePeriod':
      return _$subscriptionStateInGracePeriod;
    case 'subscriptionStateOnHold':
      return _$subscriptionStateOnHold;
    case 'subscriptionStateCanceled':
      return _$subscriptionStateCanceled;
    case 'subscriptionStateExpired':
      return _$subscriptionStateExpired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GooglePlaySubscriptionState> _$values =
    BuiltSet<GooglePlaySubscriptionState>(const <GooglePlaySubscriptionState>[
  _$subscriptionStateUnspecified,
  _$subscriptionStatePending,
  _$subscriptionStateActive,
  _$subscriptionStatePaused,
  _$subscriptionStateInGracePeriod,
  _$subscriptionStateOnHold,
  _$subscriptionStateCanceled,
  _$subscriptionStateExpired,
]);

class _$GooglePlaySubscriptionStateMeta {
  const _$GooglePlaySubscriptionStateMeta();
  GooglePlaySubscriptionState get subscriptionStateUnspecified =>
      _$subscriptionStateUnspecified;
  GooglePlaySubscriptionState get subscriptionStatePending =>
      _$subscriptionStatePending;
  GooglePlaySubscriptionState get subscriptionStateActive =>
      _$subscriptionStateActive;
  GooglePlaySubscriptionState get subscriptionStatePaused =>
      _$subscriptionStatePaused;
  GooglePlaySubscriptionState get subscriptionStateInGracePeriod =>
      _$subscriptionStateInGracePeriod;
  GooglePlaySubscriptionState get subscriptionStateOnHold =>
      _$subscriptionStateOnHold;
  GooglePlaySubscriptionState get subscriptionStateCanceled =>
      _$subscriptionStateCanceled;
  GooglePlaySubscriptionState get subscriptionStateExpired =>
      _$subscriptionStateExpired;
  GooglePlaySubscriptionState valueOf(String name) => _$valueOf(name);
  BuiltSet<GooglePlaySubscriptionState> get values => _$values;
}

abstract class _$GooglePlaySubscriptionStateMixin {
  // ignore: non_constant_identifier_names
  _$GooglePlaySubscriptionStateMeta get GooglePlaySubscriptionState =>
      const _$GooglePlaySubscriptionStateMeta();
}

Serializer<GooglePlaySubscriptionState>
    _$googlePlaySubscriptionStateSerializer =
    _$GooglePlaySubscriptionStateSerializer();

class _$GooglePlaySubscriptionStateSerializer
    implements PrimitiveSerializer<GooglePlaySubscriptionState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'subscriptionStateUnspecified': 'SubscriptionStateUnspecified',
    'subscriptionStatePending': 'SubscriptionStatePending',
    'subscriptionStateActive': 'SubscriptionStateActive',
    'subscriptionStatePaused': 'SubscriptionStatePaused',
    'subscriptionStateInGracePeriod': 'SubscriptionStateInGracePeriod',
    'subscriptionStateOnHold': 'SubscriptionStateOnHold',
    'subscriptionStateCanceled': 'SubscriptionStateCanceled',
    'subscriptionStateExpired': 'SubscriptionStateExpired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SubscriptionStateUnspecified': 'subscriptionStateUnspecified',
    'SubscriptionStatePending': 'subscriptionStatePending',
    'SubscriptionStateActive': 'subscriptionStateActive',
    'SubscriptionStatePaused': 'subscriptionStatePaused',
    'SubscriptionStateInGracePeriod': 'subscriptionStateInGracePeriod',
    'SubscriptionStateOnHold': 'subscriptionStateOnHold',
    'SubscriptionStateCanceled': 'subscriptionStateCanceled',
    'SubscriptionStateExpired': 'subscriptionStateExpired',
  };

  @override
  final Iterable<Type> types = const <Type>[GooglePlaySubscriptionState];
  @override
  final String wireName = 'GooglePlaySubscriptionState';

  @override
  Object serialize(Serializers serializers, GooglePlaySubscriptionState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GooglePlaySubscriptionState deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GooglePlaySubscriptionState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
