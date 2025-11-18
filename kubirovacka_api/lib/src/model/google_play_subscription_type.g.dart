// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_play_subscription_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GooglePlaySubscriptionType _$monthlySubscription =
    const GooglePlaySubscriptionType._('monthlySubscription');
const GooglePlaySubscriptionType _$yearlySubscription =
    const GooglePlaySubscriptionType._('yearlySubscription');

GooglePlaySubscriptionType _$valueOf(String name) {
  switch (name) {
    case 'monthlySubscription':
      return _$monthlySubscription;
    case 'yearlySubscription':
      return _$yearlySubscription;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GooglePlaySubscriptionType> _$values =
    BuiltSet<GooglePlaySubscriptionType>(const <GooglePlaySubscriptionType>[
  _$monthlySubscription,
  _$yearlySubscription,
]);

class _$GooglePlaySubscriptionTypeMeta {
  const _$GooglePlaySubscriptionTypeMeta();
  GooglePlaySubscriptionType get monthlySubscription => _$monthlySubscription;
  GooglePlaySubscriptionType get yearlySubscription => _$yearlySubscription;
  GooglePlaySubscriptionType valueOf(String name) => _$valueOf(name);
  BuiltSet<GooglePlaySubscriptionType> get values => _$values;
}

abstract class _$GooglePlaySubscriptionTypeMixin {
  // ignore: non_constant_identifier_names
  _$GooglePlaySubscriptionTypeMeta get GooglePlaySubscriptionType =>
      const _$GooglePlaySubscriptionTypeMeta();
}

Serializer<GooglePlaySubscriptionType> _$googlePlaySubscriptionTypeSerializer =
    _$GooglePlaySubscriptionTypeSerializer();

class _$GooglePlaySubscriptionTypeSerializer
    implements PrimitiveSerializer<GooglePlaySubscriptionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthlySubscription': 'MonthlySubscription',
    'yearlySubscription': 'YearlySubscription',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MonthlySubscription': 'monthlySubscription',
    'YearlySubscription': 'yearlySubscription',
  };

  @override
  final Iterable<Type> types = const <Type>[GooglePlaySubscriptionType];
  @override
  final String wireName = 'GooglePlaySubscriptionType';

  @override
  Object serialize(Serializers serializers, GooglePlaySubscriptionType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GooglePlaySubscriptionType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GooglePlaySubscriptionType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
