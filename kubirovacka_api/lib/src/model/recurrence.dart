//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kubirovacka_api/src/model/recurrence_state.dart';
import 'package:kubirovacka_api/src/model/recurrence_cycle.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurrence.g.dart';

/// Recurrence
///
/// Properties:
/// * [cycle]
/// * [period]
/// * [dateTo]
/// * [state]
@BuiltValue()
abstract class Recurrence implements Built<Recurrence, RecurrenceBuilder> {
  @BuiltValueField(wireName: r'cycle')
  RecurrenceCycle? get cycle;
  // enum cycleEnum {  MONTH,  WEEK,  DAY,  ON_DEMAND,  };

  @BuiltValueField(wireName: r'period')
  int? get period;

  @BuiltValueField(wireName: r'dateTo')
  DateTime? get dateTo;

  @BuiltValueField(wireName: r'state')
  RecurrenceState? get state;
  // enum stateEnum {  REQUESTED,  STARTED,  STOPPED,  };

  Recurrence._();

  factory Recurrence([void updates(RecurrenceBuilder b)]) = _$Recurrence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurrenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Recurrence> get serializer => _$RecurrenceSerializer();
}

class _$RecurrenceSerializer implements PrimitiveSerializer<Recurrence> {
  @override
  final Iterable<Type> types = const [Recurrence, _$Recurrence];

  @override
  final String wireName = r'Recurrence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Recurrence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cycle != null) {
      yield r'cycle';
      yield serializers.serialize(
        object.cycle,
        specifiedType: const FullType(RecurrenceCycle),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(int),
      );
    }
    if (object.dateTo != null) {
      yield r'dateTo';
      yield serializers.serialize(
        object.dateTo,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(RecurrenceState),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Recurrence object, {
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
    required RecurrenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecurrenceCycle),
          ) as RecurrenceCycle;
          result.cycle = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.period = valueDes;
          break;
        case r'dateTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.dateTo = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecurrenceState),
          ) as RecurrenceState;
          result.state = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Recurrence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurrenceBuilder();
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
