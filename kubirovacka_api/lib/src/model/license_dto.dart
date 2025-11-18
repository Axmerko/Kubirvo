//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_dto.g.dart';

/// LicenseDTO
///
/// Properties:
/// * [expirationDate]
/// * [startDate]
/// * [licenseScopes]
/// * [ownerGroupId]
/// * [id]
/// * [userId]
/// * [ownerName]
@BuiltValue()
abstract class LicenseDTO implements Built<LicenseDTO, LicenseDTOBuilder> {
  @BuiltValueField(wireName: r'expirationDate')
  DateTime get expirationDate;

  @BuiltValueField(wireName: r'startDate')
  DateTime get startDate;

  @BuiltValueField(wireName: r'licenseScopes')
  BuiltList<JsonObject?> get licenseScopes;

  @BuiltValueField(wireName: r'ownerGroupId')
  String get ownerGroupId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'ownerName')
  String? get ownerName;

  LicenseDTO._();

  factory LicenseDTO([void updates(LicenseDTOBuilder b)]) = _$LicenseDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseDTO> get serializer => _$LicenseDTOSerializer();
}

class _$LicenseDTOSerializer implements PrimitiveSerializer<LicenseDTO> {
  @override
  final Iterable<Type> types = const [LicenseDTO, _$LicenseDTO];

  @override
  final String wireName = r'LicenseDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expirationDate';
    yield serializers.serialize(
      object.expirationDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'startDate';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'licenseScopes';
    yield serializers.serialize(
      object.licenseScopes,
      specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
    );
    yield r'ownerGroupId';
    yield serializers.serialize(
      object.ownerGroupId,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ownerName != null) {
      yield r'ownerName';
      yield serializers.serialize(
        object.ownerName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseDTO object, {
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
    required LicenseDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expirationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expirationDate = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startDate = valueDes;
          break;
        case r'licenseScopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>;
          result.licenseScopes.replace(valueDes);
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        case r'ownerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseDTOBuilder();
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
