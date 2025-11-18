//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license_product_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/user.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license.g.dart';

/// License
///
/// Properties:
/// * [createdAt]
/// * [ownerGroupId]
/// * [startDate]
/// * [expirationDate]
/// * [licenseScopes]
/// * [id]
/// * [userId]
/// * [user]
/// * [ownerGroup]
/// * [lastPurchasePeriod]
/// * [notifyExpirationAt]
/// * [mobileStoreSubscriptionState]
@BuiltValue()
abstract class License implements Built<License, LicenseBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'ownerGroupId')
  String get ownerGroupId;

  @BuiltValueField(wireName: r'startDate')
  DateTime get startDate;

  @BuiltValueField(wireName: r'expirationDate')
  DateTime get expirationDate;

  @BuiltValueField(wireName: r'licenseScopes')
  BuiltList<JsonObject?> get licenseScopes;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'user')
  User? get user;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'lastPurchasePeriod')
  LicenseProductType? get lastPurchasePeriod;
  // enum lastPurchasePeriodEnum {  KubPrem1Year,  KubPrem1Month,  };

  @BuiltValueField(wireName: r'notifyExpirationAt')
  DateTime? get notifyExpirationAt;

  @BuiltValueField(wireName: r'mobileStoreSubscriptionState')
  String? get mobileStoreSubscriptionState;

  License._();

  factory License([void updates(LicenseBuilder b)]) = _$License;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<License> get serializer => _$LicenseSerializer();
}

class _$LicenseSerializer implements PrimitiveSerializer<License> {
  @override
  final Iterable<Type> types = const [License, _$License];

  @override
  final String wireName = r'License';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    License object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'ownerGroupId';
    yield serializers.serialize(
      object.ownerGroupId,
      specifiedType: const FullType(String),
    );
    yield r'startDate';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'expirationDate';
    yield serializers.serialize(
      object.expirationDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'licenseScopes';
    yield serializers.serialize(
      object.licenseScopes,
      specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
    if (object.ownerGroup != null) {
      yield r'ownerGroup';
      yield serializers.serialize(
        object.ownerGroup,
        specifiedType: const FullType(Group),
      );
    }
    if (object.lastPurchasePeriod != null) {
      yield r'lastPurchasePeriod';
      yield serializers.serialize(
        object.lastPurchasePeriod,
        specifiedType: const FullType(LicenseProductType),
      );
    }
    if (object.notifyExpirationAt != null) {
      yield r'notifyExpirationAt';
      yield serializers.serialize(
        object.notifyExpirationAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.mobileStoreSubscriptionState != null) {
      yield r'mobileStoreSubscriptionState';
      yield serializers.serialize(
        object.mobileStoreSubscriptionState,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    License object, {
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
    required LicenseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupId = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startDate = valueDes;
          break;
        case r'expirationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expirationDate = valueDes;
          break;
        case r'licenseScopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>;
          result.licenseScopes.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'lastPurchasePeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LicenseProductType),
          ) as LicenseProductType;
          result.lastPurchasePeriod = valueDes;
          break;
        case r'notifyExpirationAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.notifyExpirationAt = valueDes;
          break;
        case r'mobileStoreSubscriptionState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mobileStoreSubscriptionState = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  License deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseBuilder();
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
