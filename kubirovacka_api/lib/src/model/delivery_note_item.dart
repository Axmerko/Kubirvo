//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/sortiment.dart';
import 'package:kubirovacka_api/src/model/delivery_note.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_note_item.g.dart';

/// DeliveryNoteItem
///
/// Properties:
/// * [id]
/// * [sortimentId]
/// * [volume]
/// * [departurePlace]
/// * [deliveryNoteId]
/// * [deliveryNote]
/// * [sortiment]
@BuiltValue()
abstract class DeliveryNoteItem
    implements Built<DeliveryNoteItem, DeliveryNoteItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'sortimentId')
  String? get sortimentId;

  @BuiltValueField(wireName: r'volume')
  double? get volume;

  @BuiltValueField(wireName: r'departurePlace')
  String? get departurePlace;

  @BuiltValueField(wireName: r'deliveryNoteId')
  String? get deliveryNoteId;

  @BuiltValueField(wireName: r'deliveryNote')
  DeliveryNote? get deliveryNote;

  @BuiltValueField(wireName: r'sortiment')
  Sortiment? get sortiment;

  DeliveryNoteItem._();

  factory DeliveryNoteItem([void updates(DeliveryNoteItemBuilder b)]) =
      _$DeliveryNoteItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryNoteItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryNoteItem> get serializer =>
      _$DeliveryNoteItemSerializer();
}

class _$DeliveryNoteItemSerializer
    implements PrimitiveSerializer<DeliveryNoteItem> {
  @override
  final Iterable<Type> types = const [DeliveryNoteItem, _$DeliveryNoteItem];

  @override
  final String wireName = r'DeliveryNoteItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryNoteItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortimentId != null) {
      yield r'sortimentId';
      yield serializers.serialize(
        object.sortimentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType(double),
      );
    }
    if (object.departurePlace != null) {
      yield r'departurePlace';
      yield serializers.serialize(
        object.departurePlace,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliveryNoteId != null) {
      yield r'deliveryNoteId';
      yield serializers.serialize(
        object.deliveryNoteId,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryNote != null) {
      yield r'deliveryNote';
      yield serializers.serialize(
        object.deliveryNote,
        specifiedType: const FullType(DeliveryNote),
      );
    }
    if (object.sortiment != null) {
      yield r'sortiment';
      yield serializers.serialize(
        object.sortiment,
        specifiedType: const FullType(Sortiment),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryNoteItem object, {
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
    required DeliveryNoteItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'sortimentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortimentId = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.volume = valueDes;
          break;
        case r'departurePlace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.departurePlace = valueDes;
          break;
        case r'deliveryNoteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryNoteId = valueDes;
          break;
        case r'deliveryNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryNote),
          ) as DeliveryNote;
          result.deliveryNote.replace(valueDes);
          break;
        case r'sortiment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Sortiment),
          ) as Sortiment;
          result.sortiment.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryNoteItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryNoteItemBuilder();
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
