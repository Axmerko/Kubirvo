//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_payment_provider.g.dart';

class LicensePaymentProvider extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GoPay')
  static const LicensePaymentProvider goPay = _$goPay;
  @BuiltValueEnumConst(wireName: r'GooglePlay')
  static const LicensePaymentProvider googlePlay = _$googlePlay;
  @BuiltValueEnumConst(wireName: r'AppStore')
  static const LicensePaymentProvider appStore = _$appStore;

  static Serializer<LicensePaymentProvider> get serializer =>
      _$licensePaymentProviderSerializer;

  const LicensePaymentProvider._(String name) : super(name);

  static BuiltSet<LicensePaymentProvider> get values => _$values;
  static LicensePaymentProvider valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LicensePaymentProviderMixin = Object
    with _$LicensePaymentProviderMixin;
