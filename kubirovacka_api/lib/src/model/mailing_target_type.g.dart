// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mailing_target_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MailingTargetType _$everyConfirmedAddress =
    const MailingTargetType._('everyConfirmedAddress');
const MailingTargetType _$specificAddresses =
    const MailingTargetType._('specificAddresses');
const MailingTargetType _$premiumUsers =
    const MailingTargetType._('premiumUsers');
const MailingTargetType _$nonPremiumUsers =
    const MailingTargetType._('nonPremiumUsers');
const MailingTargetType _$activeUsers =
    const MailingTargetType._('activeUsers');
const MailingTargetType _$inactiveUsers =
    const MailingTargetType._('inactiveUsers');
const MailingTargetType _$advertisers =
    const MailingTargetType._('advertisers');
const MailingTargetType _$everyUnconfirmedAddress =
    const MailingTargetType._('everyUnconfirmedAddress');

MailingTargetType _$valueOf(String name) {
  switch (name) {
    case 'everyConfirmedAddress':
      return _$everyConfirmedAddress;
    case 'specificAddresses':
      return _$specificAddresses;
    case 'premiumUsers':
      return _$premiumUsers;
    case 'nonPremiumUsers':
      return _$nonPremiumUsers;
    case 'activeUsers':
      return _$activeUsers;
    case 'inactiveUsers':
      return _$inactiveUsers;
    case 'advertisers':
      return _$advertisers;
    case 'everyUnconfirmedAddress':
      return _$everyUnconfirmedAddress;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MailingTargetType> _$values =
    BuiltSet<MailingTargetType>(const <MailingTargetType>[
  _$everyConfirmedAddress,
  _$specificAddresses,
  _$premiumUsers,
  _$nonPremiumUsers,
  _$activeUsers,
  _$inactiveUsers,
  _$advertisers,
  _$everyUnconfirmedAddress,
]);

class _$MailingTargetTypeMeta {
  const _$MailingTargetTypeMeta();
  MailingTargetType get everyConfirmedAddress => _$everyConfirmedAddress;
  MailingTargetType get specificAddresses => _$specificAddresses;
  MailingTargetType get premiumUsers => _$premiumUsers;
  MailingTargetType get nonPremiumUsers => _$nonPremiumUsers;
  MailingTargetType get activeUsers => _$activeUsers;
  MailingTargetType get inactiveUsers => _$inactiveUsers;
  MailingTargetType get advertisers => _$advertisers;
  MailingTargetType get everyUnconfirmedAddress => _$everyUnconfirmedAddress;
  MailingTargetType valueOf(String name) => _$valueOf(name);
  BuiltSet<MailingTargetType> get values => _$values;
}

abstract class _$MailingTargetTypeMixin {
  // ignore: non_constant_identifier_names
  _$MailingTargetTypeMeta get MailingTargetType =>
      const _$MailingTargetTypeMeta();
}

Serializer<MailingTargetType> _$mailingTargetTypeSerializer =
    _$MailingTargetTypeSerializer();

class _$MailingTargetTypeSerializer
    implements PrimitiveSerializer<MailingTargetType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'everyConfirmedAddress': 'EveryConfirmedAddress',
    'specificAddresses': 'SpecificAddresses',
    'premiumUsers': 'PremiumUsers',
    'nonPremiumUsers': 'NonPremiumUsers',
    'activeUsers': 'ActiveUsers',
    'inactiveUsers': 'InactiveUsers',
    'advertisers': 'Advertisers',
    'everyUnconfirmedAddress': 'EveryUnconfirmedAddress',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EveryConfirmedAddress': 'everyConfirmedAddress',
    'SpecificAddresses': 'specificAddresses',
    'PremiumUsers': 'premiumUsers',
    'NonPremiumUsers': 'nonPremiumUsers',
    'ActiveUsers': 'activeUsers',
    'InactiveUsers': 'inactiveUsers',
    'Advertisers': 'advertisers',
    'EveryUnconfirmedAddress': 'everyUnconfirmedAddress',
  };

  @override
  final Iterable<Type> types = const <Type>[MailingTargetType];
  @override
  final String wireName = 'MailingTargetType';

  @override
  Object serialize(Serializers serializers, MailingTargetType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MailingTargetType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MailingTargetType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
