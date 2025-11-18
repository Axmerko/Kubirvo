//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_auth_state.g.dart';

class PreAuthState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REQUESTED')
  static const PreAuthState REQUESTED = _$REQUESTED;
  @BuiltValueEnumConst(wireName: r'AUTHORIZED')
  static const PreAuthState AUTHORIZED = _$AUTHORIZED;
  @BuiltValueEnumConst(wireName: r'CAPTURED')
  static const PreAuthState CAPTURED = _$CAPTURED;
  @BuiltValueEnumConst(wireName: r'CANCELED')
  static const PreAuthState CANCELED = _$CANCELED;

  static Serializer<PreAuthState> get serializer => _$preAuthStateSerializer;

  const PreAuthState._(String name) : super(name);

  static BuiltSet<PreAuthState> get values => _$values;
  static PreAuthState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PreAuthStateMixin = Object with _$PreAuthStateMixin;
