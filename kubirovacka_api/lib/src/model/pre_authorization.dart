//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/pre_auth_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_authorization.g.dart';

/// PreAuthorization
///
/// Properties:
/// * [requested]
/// * [state]
@BuiltValue()
abstract class PreAuthorization
    implements Built<PreAuthorization, PreAuthorizationBuilder> {
  @BuiltValueField(wireName: r'requested')
  bool? get requested;

  @BuiltValueField(wireName: r'state')
  PreAuthState? get state;
  // enum stateEnum {  REQUESTED,  AUTHORIZED,  CAPTURED,  CANCELED,  };

  PreAuthorization._();

  factory PreAuthorization([void updates(PreAuthorizationBuilder b)]) =
      _$PreAuthorization;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreAuthorizationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreAuthorization> get serializer =>
      _$PreAuthorizationSerializer();
}

class _$PreAuthorizationSerializer
    implements PrimitiveSerializer<PreAuthorization> {
  @override
  final Iterable<Type> types = const [PreAuthorization, _$PreAuthorization];

  @override
  final String wireName = r'PreAuthorization';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreAuthorization object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.requested != null) {
      yield r'requested';
      yield serializers.serialize(
        object.requested,
        specifiedType: const FullType(bool),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(PreAuthState),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreAuthorization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreAuthorizationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requested = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreAuthState),
          ) as PreAuthState;
          result.state = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreAuthorization deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreAuthorizationBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
