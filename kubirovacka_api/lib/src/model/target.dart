//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/target_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'target.g.dart';

/// Target
///
/// Properties:
/// * [type]
/// * [goId]
@BuiltValue()
abstract class Target implements Built<Target, TargetBuilder> {
  @BuiltValueField(wireName: r'type')
  TargetType? get type;
  // enum typeEnum {  ACCOUNT,  BANK_ACCOUNT,  COUPON,  };

  @BuiltValueField(wireName: r'goId')
  int? get goId;

  Target._();

  factory Target([void updates(TargetBuilder b)]) = _$Target;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Target> get serializer => _$TargetSerializer();
}

class _$TargetSerializer implements PrimitiveSerializer<Target> {
  @override
  final Iterable<Type> types = const [Target, _$Target];

  @override
  final String wireName = r'Target';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Target object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TargetType),
      );
    }
    if (object.goId != null) {
      yield r'goId';
      yield serializers.serialize(
        object.goId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Target object, {
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
    required TargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TargetType),
          ) as TargetType;
          result.type = valueDes;
          break;
        case r'goId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.goId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Target deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetBuilder();
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
