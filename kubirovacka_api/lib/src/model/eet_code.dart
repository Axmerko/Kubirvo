//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eet_code.g.dart';

/// EETCode
///
/// Properties:
/// * [fik]
/// * [bkp]
/// * [pkp]
@BuiltValue()
abstract class EETCode implements Built<EETCode, EETCodeBuilder> {
  @BuiltValueField(wireName: r'fik')
  String? get fik;

  @BuiltValueField(wireName: r'bkp')
  String? get bkp;

  @BuiltValueField(wireName: r'pkp')
  String? get pkp;

  EETCode._();

  factory EETCode([void updates(EETCodeBuilder b)]) = _$EETCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EETCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EETCode> get serializer => _$EETCodeSerializer();
}

class _$EETCodeSerializer implements PrimitiveSerializer<EETCode> {
  @override
  final Iterable<Type> types = const [EETCode, _$EETCode];

  @override
  final String wireName = r'EETCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EETCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fik != null) {
      yield r'fik';
      yield serializers.serialize(
        object.fik,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bkp != null) {
      yield r'bkp';
      yield serializers.serialize(
        object.bkp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pkp != null) {
      yield r'pkp';
      yield serializers.serialize(
        object.pkp,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EETCode object, {
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
    required EETCodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fik':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fik = valueDes;
          break;
        case r'bkp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bkp = valueDes;
          break;
        case r'pkp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pkp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EETCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EETCodeBuilder();
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
