//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_state.g.dart';

class SessionState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CREATED')
  static const SessionState CREATED = _$CREATED;
  @BuiltValueEnumConst(wireName: r'PAYMENT_METHOD_CHOSEN')
  static const SessionState PAYMENT_METHOD_CHOSEN = _$PAYMENT_METHOD_CHOSEN;
  @BuiltValueEnumConst(wireName: r'PAID')
  static const SessionState PAID = _$PAID;
  @BuiltValueEnumConst(wireName: r'AUTHORIZED')
  static const SessionState AUTHORIZED = _$AUTHORIZED;
  @BuiltValueEnumConst(wireName: r'CANCELED')
  static const SessionState CANCELED = _$CANCELED;
  @BuiltValueEnumConst(wireName: r'TIMEOUTED')
  static const SessionState TIMEOUTED = _$TIMEOUTED;
  @BuiltValueEnumConst(wireName: r'REFUNDED')
  static const SessionState REFUNDED = _$REFUNDED;
  @BuiltValueEnumConst(wireName: r'PARTIALLY_REFUNDED')
  static const SessionState PARTIALLY_REFUNDED = _$PARTIALLY_REFUNDED;

  static Serializer<SessionState> get serializer => _$sessionStateSerializer;

  const SessionState._(String name) : super(name);

  static BuiltSet<SessionState> get values => _$values;
  static SessionState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SessionStateMixin = Object with _$SessionStateMixin;
