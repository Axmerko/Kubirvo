// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Currency _$CZK = const Currency._('CZK');
const Currency _$EUR = const Currency._('EUR');
const Currency _$PLN = const Currency._('PLN');
const Currency _$HUF = const Currency._('HUF');
const Currency _$USD = const Currency._('USD');
const Currency _$GBP = const Currency._('GBP');
const Currency _$BGN = const Currency._('BGN');
const Currency _$RON = const Currency._('RON');

Currency _$valueOf(String name) {
  switch (name) {
    case 'CZK':
      return _$CZK;
    case 'EUR':
      return _$EUR;
    case 'PLN':
      return _$PLN;
    case 'HUF':
      return _$HUF;
    case 'USD':
      return _$USD;
    case 'GBP':
      return _$GBP;
    case 'BGN':
      return _$BGN;
    case 'RON':
      return _$RON;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Currency> _$values = BuiltSet<Currency>(const <Currency>[
  _$CZK,
  _$EUR,
  _$PLN,
  _$HUF,
  _$USD,
  _$GBP,
  _$BGN,
  _$RON,
]);

class _$CurrencyMeta {
  const _$CurrencyMeta();
  Currency get CZK => _$CZK;
  Currency get EUR => _$EUR;
  Currency get PLN => _$PLN;
  Currency get HUF => _$HUF;
  Currency get USD => _$USD;
  Currency get GBP => _$GBP;
  Currency get BGN => _$BGN;
  Currency get RON => _$RON;
  Currency valueOf(String name) => _$valueOf(name);
  BuiltSet<Currency> get values => _$values;
}

abstract class _$CurrencyMixin {
  // ignore: non_constant_identifier_names
  _$CurrencyMeta get Currency => const _$CurrencyMeta();
}

Serializer<Currency> _$currencySerializer = _$CurrencySerializer();

class _$CurrencySerializer implements PrimitiveSerializer<Currency> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CZK': 'CZK',
    'EUR': 'EUR',
    'PLN': 'PLN',
    'HUF': 'HUF',
    'USD': 'USD',
    'GBP': 'GBP',
    'BGN': 'BGN',
    'RON': 'RON',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CZK': 'CZK',
    'EUR': 'EUR',
    'PLN': 'PLN',
    'HUF': 'HUF',
    'USD': 'USD',
    'GBP': 'GBP',
    'BGN': 'BGN',
    'RON': 'RON',
  };

  @override
  final Iterable<Type> types = const <Type>[Currency];
  @override
  final String wireName = 'Currency';

  @override
  Object serialize(Serializers serializers, Currency object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Currency deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Currency.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
