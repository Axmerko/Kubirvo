//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/api_type.dart';
import 'package:kubirovacka_api/src/model/model_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'diagnostic_log_dto.g.dart';

/// DiagnosticLogDTO
///
/// Properties:
/// * [message]
/// * [source_]
/// * [type]
/// * [dateTime]
@BuiltValue()
abstract class DiagnosticLogDTO
    implements Built<DiagnosticLogDTO, DiagnosticLogDTOBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'source')
  ModelSource? get source_;
  // enum source_Enum {  Android,  Web,  };

  @BuiltValueField(wireName: r'type')
  ApiType? get type;
  // enum typeEnum {  Verbose,  Warn,  Error,  };

  @BuiltValueField(wireName: r'dateTime')
  DateTime? get dateTime;

  DiagnosticLogDTO._();

  factory DiagnosticLogDTO([void updates(DiagnosticLogDTOBuilder b)]) =
      _$DiagnosticLogDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiagnosticLogDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiagnosticLogDTO> get serializer =>
      _$DiagnosticLogDTOSerializer();
}

class _$DiagnosticLogDTOSerializer
    implements PrimitiveSerializer<DiagnosticLogDTO> {
  @override
  final Iterable<Type> types = const [DiagnosticLogDTO, _$DiagnosticLogDTO];

  @override
  final String wireName = r'DiagnosticLogDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiagnosticLogDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(ModelSource),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ApiType),
      );
    }
    if (object.dateTime != null) {
      yield r'dateTime';
      yield serializers.serialize(
        object.dateTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DiagnosticLogDTO object, {
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
    required DiagnosticLogDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModelSource),
          ) as ModelSource;
          result.source_ = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiType),
          ) as ApiType;
          result.type = valueDes;
          break;
        case r'dateTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.dateTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiagnosticLogDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiagnosticLogDTOBuilder();
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
