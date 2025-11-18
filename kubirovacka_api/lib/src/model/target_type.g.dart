// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TargetType _$ACCOUNT = const TargetType._('ACCOUNT');
const TargetType _$BANK_ACCOUNT = const TargetType._('BANK_ACCOUNT');
const TargetType _$COUPON = const TargetType._('COUPON');

TargetType _$valueOf(String name) {
  switch (name) {
    case 'ACCOUNT':
      return _$ACCOUNT;
    case 'BANK_ACCOUNT':
      return _$BANK_ACCOUNT;
    case 'COUPON':
      return _$COUPON;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TargetType> _$values = BuiltSet<TargetType>(const <TargetType>[
  _$ACCOUNT,
  _$BANK_ACCOUNT,
  _$COUPON,
]);

class _$TargetTypeMeta {
  const _$TargetTypeMeta();
  TargetType get ACCOUNT => _$ACCOUNT;
  TargetType get BANK_ACCOUNT => _$BANK_ACCOUNT;
  TargetType get COUPON => _$COUPON;
  TargetType valueOf(String name) => _$valueOf(name);
  BuiltSet<TargetType> get values => _$values;
}

abstract class _$TargetTypeMixin {
  // ignore: non_constant_identifier_names
  _$TargetTypeMeta get TargetType => const _$TargetTypeMeta();
}

Serializer<TargetType> _$targetTypeSerializer = _$TargetTypeSerializer();

class _$TargetTypeSerializer implements PrimitiveSerializer<TargetType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACCOUNT': 'ACCOUNT',
    'BANK_ACCOUNT': 'BANK_ACCOUNT',
    'COUPON': 'COUPON',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACCOUNT': 'ACCOUNT',
    'BANK_ACCOUNT': 'BANK_ACCOUNT',
    'COUPON': 'COUPON',
  };

  @override
  final Iterable<Type> types = const <Type>[TargetType];
  @override
  final String wireName = 'TargetType';

  @override
  Object serialize(Serializers serializers, TargetType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TargetType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TargetType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
