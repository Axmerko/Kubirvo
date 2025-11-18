//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_product_type.g.dart';

class LicenseProductType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'KubPrem1Year')
  static const LicenseProductType kubPrem1Year = _$kubPrem1Year;
  @BuiltValueEnumConst(wireName: r'KubPrem1Month')
  static const LicenseProductType kubPrem1Month = _$kubPrem1Month;

  static Serializer<LicenseProductType> get serializer =>
      _$licenseProductTypeSerializer;

  const LicenseProductType._(String name) : super(name);

  static BuiltSet<LicenseProductType> get values => _$values;
  static LicenseProductType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LicenseProductTypeMixin = Object with _$LicenseProductTypeMixin;
