//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/license.dart';
import 'package:kubirovacka_api/src/model/sortiment.dart';
import 'package:kubirovacka_api/src/model/feedback.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/license_payment.dart';
import 'package:kubirovacka_api/src/model/delivery_note.dart';
import 'package:kubirovacka_api/src/model/user_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [registeredAt]
/// * [email]
/// * [firstName]
/// * [lastName]
/// * [password]
/// * [locale]
/// * [confirmed]
/// * [jwtVersion]
/// * [isAdmin]
/// * [id]
/// * [passwordResetToken]
/// * [firebaseToken]
/// * [iDokladId]
/// * [userGroups]
/// * [licensesUsed]
/// * [licensePayments]
/// * [feedbacks]
/// * [sortiments]
/// * [deliveryNotes]
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'registeredAt')
  DateTime get registeredAt;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'locale')
  String get locale;

  @BuiltValueField(wireName: r'confirmed')
  bool get confirmed;

  @BuiltValueField(wireName: r'jwtVersion')
  int get jwtVersion;

  @BuiltValueField(wireName: r'isAdmin')
  bool get isAdmin;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'passwordResetToken')
  String? get passwordResetToken;

  @BuiltValueField(wireName: r'firebaseToken')
  String? get firebaseToken;

  @BuiltValueField(wireName: r'iDokladId')
  int? get iDokladId;

  @BuiltValueField(wireName: r'userGroups')
  BuiltList<UserGroup>? get userGroups;

  @BuiltValueField(wireName: r'licensesUsed')
  BuiltList<License>? get licensesUsed;

  @BuiltValueField(wireName: r'licensePayments')
  BuiltList<LicensePayment>? get licensePayments;

  @BuiltValueField(wireName: r'feedbacks')
  BuiltList<Feedback>? get feedbacks;

  @BuiltValueField(wireName: r'sortiments')
  BuiltList<Sortiment>? get sortiments;

  @BuiltValueField(wireName: r'deliveryNotes')
  BuiltList<DeliveryNote>? get deliveryNotes;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'registeredAt';
    yield serializers.serialize(
      object.registeredAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'firstName';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'lastName';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
    yield r'confirmed';
    yield serializers.serialize(
      object.confirmed,
      specifiedType: const FullType(bool),
    );
    yield r'jwtVersion';
    yield serializers.serialize(
      object.jwtVersion,
      specifiedType: const FullType(int),
    );
    yield r'isAdmin';
    yield serializers.serialize(
      object.isAdmin,
      specifiedType: const FullType(bool),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.passwordResetToken != null) {
      yield r'passwordResetToken';
      yield serializers.serialize(
        object.passwordResetToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.firebaseToken != null) {
      yield r'firebaseToken';
      yield serializers.serialize(
        object.firebaseToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.iDokladId != null) {
      yield r'iDokladId';
      yield serializers.serialize(
        object.iDokladId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.userGroups != null) {
      yield r'userGroups';
      yield serializers.serialize(
        object.userGroups,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(UserGroup)]),
      );
    }
    if (object.licensesUsed != null) {
      yield r'licensesUsed';
      yield serializers.serialize(
        object.licensesUsed,
        specifiedType: const FullType.nullable(BuiltList, [FullType(License)]),
      );
    }
    if (object.licensePayments != null) {
      yield r'licensePayments';
      yield serializers.serialize(
        object.licensePayments,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(LicensePayment)]),
      );
    }
    if (object.feedbacks != null) {
      yield r'feedbacks';
      yield serializers.serialize(
        object.feedbacks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Feedback)]),
      );
    }
    if (object.sortiments != null) {
      yield r'sortiments';
      yield serializers.serialize(
        object.sortiments,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(Sortiment)]),
      );
    }
    if (object.deliveryNotes != null) {
      yield r'deliveryNotes';
      yield serializers.serialize(
        object.deliveryNotes,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(DeliveryNote)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
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
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'registeredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.registeredAt = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmed = valueDes;
          break;
        case r'jwtVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.jwtVersion = valueDes;
          break;
        case r'isAdmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAdmin = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'passwordResetToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.passwordResetToken = valueDes;
          break;
        case r'firebaseToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firebaseToken = valueDes;
          break;
        case r'iDokladId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.iDokladId = valueDes;
          break;
        case r'userGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(UserGroup)]),
          ) as BuiltList<UserGroup>?;
          if (valueDes == null) continue;
          result.userGroups.replace(valueDes);
          break;
        case r'licensesUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(License)]),
          ) as BuiltList<License>?;
          if (valueDes == null) continue;
          result.licensesUsed.replace(valueDes);
          break;
        case r'licensePayments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(LicensePayment)]),
          ) as BuiltList<LicensePayment>?;
          if (valueDes == null) continue;
          result.licensePayments.replace(valueDes);
          break;
        case r'feedbacks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Feedback)]),
          ) as BuiltList<Feedback>?;
          if (valueDes == null) continue;
          result.feedbacks.replace(valueDes);
          break;
        case r'sortiments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Sortiment)]),
          ) as BuiltList<Sortiment>?;
          if (valueDes == null) continue;
          result.sortiments.replace(valueDes);
          break;
        case r'deliveryNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(DeliveryNote)]),
          ) as BuiltList<DeliveryNote>?;
          if (valueDes == null) continue;
          result.deliveryNotes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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
