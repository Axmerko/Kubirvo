//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/google_play_subscription_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_play_subscription_notification.g.dart';

/// GooglePlaySubscriptionNotification
///
/// Properties:
/// * [version]
/// * [notificationType]
/// * [purchaseToken]
/// * [subscriptionId]
@BuiltValue()
abstract class GooglePlaySubscriptionNotification
    implements
        Built<GooglePlaySubscriptionNotification,
            GooglePlaySubscriptionNotificationBuilder> {
  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'notificationType')
  int? get notificationType;

  @BuiltValueField(wireName: r'purchaseToken')
  String? get purchaseToken;

  @BuiltValueField(wireName: r'subscriptionId')
  GooglePlaySubscriptionType? get subscriptionId;
  // enum subscriptionIdEnum {  MonthlySubscription,  YearlySubscription,  };

  GooglePlaySubscriptionNotification._();

  factory GooglePlaySubscriptionNotification(
          [void updates(GooglePlaySubscriptionNotificationBuilder b)]) =
      _$GooglePlaySubscriptionNotification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GooglePlaySubscriptionNotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GooglePlaySubscriptionNotification> get serializer =>
      _$GooglePlaySubscriptionNotificationSerializer();
}

class _$GooglePlaySubscriptionNotificationSerializer
    implements PrimitiveSerializer<GooglePlaySubscriptionNotification> {
  @override
  final Iterable<Type> types = const [
    GooglePlaySubscriptionNotification,
    _$GooglePlaySubscriptionNotification
  ];

  @override
  final String wireName = r'GooglePlaySubscriptionNotification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GooglePlaySubscriptionNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notificationType != null) {
      yield r'notificationType';
      yield serializers.serialize(
        object.notificationType,
        specifiedType: const FullType(int),
      );
    }
    if (object.purchaseToken != null) {
      yield r'purchaseToken';
      yield serializers.serialize(
        object.purchaseToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subscriptionId != null) {
      yield r'subscriptionId';
      yield serializers.serialize(
        object.subscriptionId,
        specifiedType: const FullType(GooglePlaySubscriptionType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GooglePlaySubscriptionNotification object, {
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
    required GooglePlaySubscriptionNotificationBuilder result,
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
        case r'notificationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notificationType = valueDes;
          break;
        case r'purchaseToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.purchaseToken = valueDes;
          break;
        case r'subscriptionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GooglePlaySubscriptionType),
          ) as GooglePlaySubscriptionType;
          result.subscriptionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GooglePlaySubscriptionNotification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GooglePlaySubscriptionNotificationBuilder();
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
