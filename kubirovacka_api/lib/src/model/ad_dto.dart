//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/ad_type.dart';
import 'package:kubirovacka_api/src/model/ad_content_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_dto.g.dart';

/// AdDTO
///
/// Properties:
/// * [name]
/// * [limitCostPerDay]
/// * [adType]
/// * [maxCostPerDay]
/// * [showFrom]
/// * [adContentType]
/// * [imageId]
/// * [destinationUrl]
/// * [html]
/// * [adId]
/// * [createdAt]
/// * [approved]
/// * [enabled]
/// * [credits]
@BuiltValue()
abstract class AdDTO implements Built<AdDTO, AdDTOBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'limitCostPerDay')
  bool get limitCostPerDay;

  @BuiltValueField(wireName: r'adType')
  AdType? get adType;
  // enum adTypeEnum {  Banner,  Fullscreen,  };

  @BuiltValueField(wireName: r'maxCostPerDay')
  int? get maxCostPerDay;

  @BuiltValueField(wireName: r'showFrom')
  DateTime? get showFrom;

  @BuiltValueField(wireName: r'adContentType')
  AdContentType? get adContentType;
  // enum adContentTypeEnum {  Image,  Html,  };

  @BuiltValueField(wireName: r'imageId')
  String? get imageId;

  @BuiltValueField(wireName: r'destinationUrl')
  String? get destinationUrl;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'adId')
  String? get adId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'approved')
  bool? get approved;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'credits')
  int? get credits;

  AdDTO._();

  factory AdDTO([void updates(AdDTOBuilder b)]) = _$AdDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdDTO> get serializer => _$AdDTOSerializer();
}

class _$AdDTOSerializer implements PrimitiveSerializer<AdDTO> {
  @override
  final Iterable<Type> types = const [AdDTO, _$AdDTO];

  @override
  final String wireName = r'AdDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'limitCostPerDay';
    yield serializers.serialize(
      object.limitCostPerDay,
      specifiedType: const FullType(bool),
    );
    if (object.adType != null) {
      yield r'adType';
      yield serializers.serialize(
        object.adType,
        specifiedType: const FullType(AdType),
      );
    }
    if (object.maxCostPerDay != null) {
      yield r'maxCostPerDay';
      yield serializers.serialize(
        object.maxCostPerDay,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.showFrom != null) {
      yield r'showFrom';
      yield serializers.serialize(
        object.showFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.adContentType != null) {
      yield r'adContentType';
      yield serializers.serialize(
        object.adContentType,
        specifiedType: const FullType(AdContentType),
      );
    }
    if (object.imageId != null) {
      yield r'imageId';
      yield serializers.serialize(
        object.imageId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.destinationUrl != null) {
      yield r'destinationUrl';
      yield serializers.serialize(
        object.destinationUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.adId != null) {
      yield r'adId';
      yield serializers.serialize(
        object.adId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.approved != null) {
      yield r'approved';
      yield serializers.serialize(
        object.approved,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.credits != null) {
      yield r'credits';
      yield serializers.serialize(
        object.credits,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdDTO object, {
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
    required AdDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'limitCostPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.limitCostPerDay = valueDes;
          break;
        case r'adType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdType),
          ) as AdType;
          result.adType = valueDes;
          break;
        case r'maxCostPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCostPerDay = valueDes;
          break;
        case r'showFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.showFrom = valueDes;
          break;
        case r'adContentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdContentType),
          ) as AdContentType;
          result.adContentType = valueDes;
          break;
        case r'imageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageId = valueDes;
          break;
        case r'destinationUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.destinationUrl = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.html = valueDes;
          break;
        case r'adId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.adId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.approved = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'credits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.credits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdDTOBuilder();
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
