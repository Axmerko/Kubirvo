// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_payment_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LicensePaymentProvider _$goPay = const LicensePaymentProvider._('goPay');
const LicensePaymentProvider _$googlePlay =
    const LicensePaymentProvider._('googlePlay');
const LicensePaymentProvider _$appStore =
    const LicensePaymentProvider._('appStore');

LicensePaymentProvider _$valueOf(String name) {
  switch (name) {
    case 'goPay':
      return _$goPay;
    case 'googlePlay':
      return _$googlePlay;
    case 'appStore':
      return _$appStore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LicensePaymentProvider> _$values =
    BuiltSet<LicensePaymentProvider>(const <LicensePaymentProvider>[
  _$goPay,
  _$googlePlay,
  _$appStore,
]);

class _$LicensePaymentProviderMeta {
  const _$LicensePaymentProviderMeta();
  LicensePaymentProvider get goPay => _$goPay;
  LicensePaymentProvider get googlePlay => _$googlePlay;
  LicensePaymentProvider get appStore => _$appStore;
  LicensePaymentProvider valueOf(String name) => _$valueOf(name);
  BuiltSet<LicensePaymentProvider> get values => _$values;
}

abstract class _$LicensePaymentProviderMixin {
  // ignore: non_constant_identifier_names
  _$LicensePaymentProviderMeta get LicensePaymentProvider =>
      const _$LicensePaymentProviderMeta();
}

Serializer<LicensePaymentProvider> _$licensePaymentProviderSerializer =
    _$LicensePaymentProviderSerializer();

class _$LicensePaymentProviderSerializer
    implements PrimitiveSerializer<LicensePaymentProvider> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'goPay': 'GoPay',
    'googlePlay': 'GooglePlay',
    'appStore': 'AppStore',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GoPay': 'goPay',
    'GooglePlay': 'googlePlay',
    'AppStore': 'appStore',
  };

  @override
  final Iterable<Type> types = const <Type>[LicensePaymentProvider];
  @override
  final String wireName = 'LicensePaymentProvider';

  @override
  Object serialize(Serializers serializers, LicensePaymentProvider object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LicensePaymentProvider deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LicensePaymentProvider.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
