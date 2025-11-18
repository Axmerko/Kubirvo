//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/ad.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_click.g.dart';

/// AdClick
///
/// Properties:
/// * [adId]
/// * [clickedAt]
/// * [ip]
/// * [cost]
/// * [ad]
@BuiltValue()
abstract class AdClick implements Built<AdClick, AdClickBuilder> {
  @BuiltValueField(wireName: r'adId')
  String get adId;

  @BuiltValueField(wireName: r'clickedAt')
  DateTime get clickedAt;

  @BuiltValueField(wireName: r'ip')
  String get ip;

  @BuiltValueField(wireName: r'cost')
  int get cost;

  @BuiltValueField(wireName: r'ad')
  Ad? get ad;

  AdClick._();

  factory AdClick([void updates(AdClickBuilder b)]) = _$AdClick;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdClickBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdClick> get serializer => _$AdClickSerializer();
}

class _$AdClickSerializer implements PrimitiveSerializer<AdClick> {
  @override
  final Iterable<Type> types = const [AdClick, _$AdClick];

  @override
  final String wireName = r'AdClick';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdClick object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'adId';
    yield serializers.serialize(
      object.adId,
      specifiedType: const FullType(String),
    );
    yield r'clickedAt';
    yield serializers.serialize(
      object.clickedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    yield r'cost';
    yield serializers.serialize(
      object.cost,
      specifiedType: const FullType(int),
    );
    if (object.ad != null) {
      yield r'ad';
      yield serializers.serialize(
        object.ad,
        specifiedType: const FullType(Ad),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdClick object, {
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
    required AdClickBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'adId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adId = valueDes;
          break;
        case r'clickedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.clickedAt = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cost = valueDes;
          break;
        case r'ad':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Ad),
          ) as Ad;
          result.ad.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdClick deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdClickBuilder();
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
