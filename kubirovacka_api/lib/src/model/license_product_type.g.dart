// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_product_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LicenseProductType _$kubPrem1Year =
    const LicenseProductType._('kubPrem1Year');
const LicenseProductType _$kubPrem1Month =
    const LicenseProductType._('kubPrem1Month');

LicenseProductType _$valueOf(String name) {
  switch (name) {
    case 'kubPrem1Year':
      return _$kubPrem1Year;
    case 'kubPrem1Month':
      return _$kubPrem1Month;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LicenseProductType> _$values =
    BuiltSet<LicenseProductType>(const <LicenseProductType>[
  _$kubPrem1Year,
  _$kubPrem1Month,
]);

class _$LicenseProductTypeMeta {
  const _$LicenseProductTypeMeta();
  LicenseProductType get kubPrem1Year => _$kubPrem1Year;
  LicenseProductType get kubPrem1Month => _$kubPrem1Month;
  LicenseProductType valueOf(String name) => _$valueOf(name);
  BuiltSet<LicenseProductType> get values => _$values;
}

abstract class _$LicenseProductTypeMixin {
  // ignore: non_constant_identifier_names
  _$LicenseProductTypeMeta get LicenseProductType =>
      const _$LicenseProductTypeMeta();
}

Serializer<LicenseProductType> _$licenseProductTypeSerializer =
    _$LicenseProductTypeSerializer();

class _$LicenseProductTypeSerializer
    implements PrimitiveSerializer<LicenseProductType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'kubPrem1Year': 'KubPrem1Year',
    'kubPrem1Month': 'KubPrem1Month',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'KubPrem1Year': 'kubPrem1Year',
    'KubPrem1Month': 'kubPrem1Month',
  };

  @override
  final Iterable<Type> types = const <Type>[LicenseProductType];
  @override
  final String wireName = 'LicenseProductType';

  @override
  Object serialize(Serializers serializers, LicenseProductType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LicenseProductType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LicenseProductType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
