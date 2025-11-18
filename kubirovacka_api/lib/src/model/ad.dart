//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/ad_type.dart';
import 'package:kubirovacka_api/src/model/ad_click.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kubirovacka_api/src/model/media.dart';
import 'package:kubirovacka_api/src/model/group.dart';
import 'package:kubirovacka_api/src/model/ad_content_type.dart';
import 'package:kubirovacka_api/src/model/ad_view.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad.g.dart';

/// Ad
///
/// Properties:
/// * [createdAt]
/// * [name]
/// * [enabled]
/// * [approved]
/// * [adType]
/// * [credits]
/// * [cpc]
/// * [cpt]
/// * [limitCostPerDay]
/// * [ownerGroupId]
/// * [showFrom]
/// * [adContentType]
/// * [id]
/// * [maxCostPerDay]
/// * [ownerGroup]
/// * [imageId]
/// * [image]
/// * [destinationUrl]
/// * [html]
/// * [adClicks]
/// * [adViews]
@BuiltValue()
abstract class Ad implements Built<Ad, AdBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'approved')
  bool get approved;

  @BuiltValueField(wireName: r'adType')
  AdType get adType;
  // enum adTypeEnum {  Banner,  Fullscreen,  };

  @BuiltValueField(wireName: r'credits')
  int get credits;

  @BuiltValueField(wireName: r'cpc')
  int get cpc;

  @BuiltValueField(wireName: r'cpt')
  int get cpt;

  @BuiltValueField(wireName: r'limitCostPerDay')
  bool get limitCostPerDay;

  @BuiltValueField(wireName: r'ownerGroupId')
  String get ownerGroupId;

  @BuiltValueField(wireName: r'showFrom')
  DateTime get showFrom;

  @BuiltValueField(wireName: r'adContentType')
  AdContentType get adContentType;
  // enum adContentTypeEnum {  Image,  Html,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'maxCostPerDay')
  int? get maxCostPerDay;

  @BuiltValueField(wireName: r'ownerGroup')
  Group? get ownerGroup;

  @BuiltValueField(wireName: r'imageId')
  String? get imageId;

  @BuiltValueField(wireName: r'image')
  Media? get image;

  @BuiltValueField(wireName: r'destinationUrl')
  String? get destinationUrl;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'adClicks')
  BuiltList<AdClick>? get adClicks;

  @BuiltValueField(wireName: r'adViews')
  BuiltList<AdView>? get adViews;

  Ad._();

  factory Ad([void updates(AdBuilder b)]) = _$Ad;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Ad> get serializer => _$AdSerializer();
}

class _$AdSerializer implements PrimitiveSerializer<Ad> {
  @override
  final Iterable<Type> types = const [Ad, _$Ad];

  @override
  final String wireName = r'Ad';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Ad object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'approved';
    yield serializers.serialize(
      object.approved,
      specifiedType: const FullType(bool),
    );
    yield r'adType';
    yield serializers.serialize(
      object.adType,
      specifiedType: const FullType(AdType),
    );
    yield r'credits';
    yield serializers.serialize(
      object.credits,
      specifiedType: const FullType(int),
    );
    yield r'cpc';
    yield serializers.serialize(
      object.cpc,
      specifiedType: const FullType(int),
    );
    yield r'cpt';
    yield serializers.serialize(
      object.cpt,
      specifiedType: const FullType(int),
    );
    yield r'limitCostPerDay';
    yield serializers.serialize(
      object.limitCostPerDay,
      specifiedType: const FullType(bool),
    );
    yield r'ownerGroupId';
    yield serializers.serialize(
      object.ownerGroupId,
      specifiedType: const FullType(String),
    );
    yield r'showFrom';
    yield serializers.serialize(
      object.showFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'adContentType';
    yield serializers.serialize(
      object.adContentType,
      specifiedType: const FullType(AdContentType),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxCostPerDay != null) {
      yield r'maxCostPerDay';
      yield serializers.serialize(
        object.maxCostPerDay,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.ownerGroup != null) {
      yield r'ownerGroup';
      yield serializers.serialize(
        object.ownerGroup,
        specifiedType: const FullType(Group),
      );
    }
    if (object.imageId != null) {
      yield r'imageId';
      yield serializers.serialize(
        object.imageId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(Media),
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
    if (object.adClicks != null) {
      yield r'adClicks';
      yield serializers.serialize(
        object.adClicks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(AdClick)]),
      );
    }
    if (object.adViews != null) {
      yield r'adViews';
      yield serializers.serialize(
        object.adViews,
        specifiedType: const FullType.nullable(BuiltList, [FullType(AdView)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Ad object, {
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
    required AdBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approved = valueDes;
          break;
        case r'adType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdType),
          ) as AdType;
          result.adType = valueDes;
          break;
        case r'credits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.credits = valueDes;
          break;
        case r'cpc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cpc = valueDes;
          break;
        case r'cpt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cpt = valueDes;
          break;
        case r'limitCostPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.limitCostPerDay = valueDes;
          break;
        case r'ownerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerGroupId = valueDes;
          break;
        case r'showFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.showFrom = valueDes;
          break;
        case r'adContentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdContentType),
          ) as AdContentType;
          result.adContentType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'maxCostPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCostPerDay = valueDes;
          break;
        case r'ownerGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.ownerGroup.replace(valueDes);
          break;
        case r'imageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageId = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Media),
          ) as Media;
          result.image.replace(valueDes);
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
        case r'adClicks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(AdClick)]),
          ) as BuiltList<AdClick>?;
          if (valueDes == null) continue;
          result.adClicks.replace(valueDes);
          break;
        case r'adViews':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(AdView)]),
          ) as BuiltList<AdView>?;
          if (valueDes == null) continue;
          result.adViews.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Ad deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdBuilder();
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
