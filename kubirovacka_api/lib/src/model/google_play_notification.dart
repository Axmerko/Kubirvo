//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/google_play_subscription_notification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_play_notification.g.dart';

/// GooglePlayNotification
///
/// Properties:
/// * [version]
/// * [packageName]
/// * [eventTimeMillis]
/// * [subscriptionNotification]
@BuiltValue()
abstract class GooglePlayNotification
    implements Built<GooglePlayNotification, GooglePlayNotificationBuilder> {
  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'packageName')
  String? get packageName;

  @BuiltValueField(wireName: r'eventTimeMillis')
  int? get eventTimeMillis;

  @BuiltValueField(wireName: r'subscriptionNotification')
  GooglePlaySubscriptionNotification? get subscriptionNotification;

  GooglePlayNotification._();

  factory GooglePlayNotification(
          [void updates(GooglePlayNotificationBuilder b)]) =
      _$GooglePlayNotification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GooglePlayNotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GooglePlayNotification> get serializer =>
      _$GooglePlayNotificationSerializer();
}

class _$GooglePlayNotificationSerializer
    implements PrimitiveSerializer<GooglePlayNotification> {
  @override
  final Iterable<Type> types = const [
    GooglePlayNotification,
    _$GooglePlayNotification
  ];

  @override
  final String wireName = r'GooglePlayNotification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GooglePlayNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.packageName != null) {
      yield r'packageName';
      yield serializers.serialize(
        object.packageName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eventTimeMillis != null) {
      yield r'eventTimeMillis';
      yield serializers.serialize(
        object.eventTimeMillis,
        specifiedType: const FullType(int),
      );
    }
    if (object.subscriptionNotification != null) {
      yield r'subscriptionNotification';
      yield serializers.serialize(
        object.subscriptionNotification,
        specifiedType: const FullType(GooglePlaySubscriptionNotification),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GooglePlayNotification object, {
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
    required GooglePlayNotificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'packageName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.packageName = valueDes;
          break;
        case r'eventTimeMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventTimeMillis = valueDes;
          break;
        case r'subscriptionNotification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GooglePlaySubscriptionNotification),
          ) as GooglePlaySubscriptionNotification;
          result.subscriptionNotification.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GooglePlayNotification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GooglePlayNotificationBuilder();
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
