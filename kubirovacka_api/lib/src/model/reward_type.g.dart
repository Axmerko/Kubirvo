// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RewardType _$rewardForCubicMeter =
    const RewardType._('rewardForCubicMeter');

RewardType _$valueOf(String name) {
  switch (name) {
    case 'rewardForCubicMeter':
      return _$rewardForCubicMeter;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RewardType> _$values = BuiltSet<RewardType>(const <RewardType>[
  _$rewardForCubicMeter,
]);

class _$RewardTypeMeta {
  const _$RewardTypeMeta();
  RewardType get rewardForCubicMeter => _$rewardForCubicMeter;
  RewardType valueOf(String name) => _$valueOf(name);
  BuiltSet<RewardType> get values => _$values;
}

abstract class _$RewardTypeMixin {
  // ignore: non_constant_identifier_names
  _$RewardTypeMeta get RewardType => const _$RewardTypeMeta();
}

Serializer<RewardType> _$rewardTypeSerializer = _$RewardTypeSerializer();

class _$RewardTypeSerializer implements PrimitiveSerializer<RewardType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rewardForCubicMeter': 'RewardForCubicMeter',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RewardForCubicMeter': 'rewardForCubicMeter',
  };

  @override
  final Iterable<Type> types = const <Type>[RewardType];
  @override
  final String wireName = 'RewardType';

  @override
  Object serialize(Serializers serializers, RewardType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RewardType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RewardType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
