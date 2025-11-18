//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_type.g.dart';

class ApiType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Verbose')
  static const ApiType verbose = _$verbose;
  @BuiltValueEnumConst(wireName: r'Warn')
  static const ApiType warn = _$warn;
  @BuiltValueEnumConst(wireName: r'Error')
  static const ApiType error = _$error;

  static Serializer<ApiType> get serializer => _$apiTypeSerializer;

  const ApiType._(String name) : super(name);

  static BuiltSet<ApiType> get values => _$values;
  static ApiType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ApiTypeMixin = Object with _$ApiTypeMixin;
