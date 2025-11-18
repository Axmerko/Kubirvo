// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FeedbackStatus _$new_ = const FeedbackStatus._('new_');
const FeedbackStatus _$respondedOrFinished =
    const FeedbackStatus._('respondedOrFinished');
const FeedbackStatus _$ignored = const FeedbackStatus._('ignored');
const FeedbackStatus _$workInProgress =
    const FeedbackStatus._('workInProgress');
const FeedbackStatus _$waitingForMoreInformation =
    const FeedbackStatus._('waitingForMoreInformation');

FeedbackStatus _$valueOf(String name) {
  switch (name) {
    case 'new_':
      return _$new_;
    case 'respondedOrFinished':
      return _$respondedOrFinished;
    case 'ignored':
      return _$ignored;
    case 'workInProgress':
      return _$workInProgress;
    case 'waitingForMoreInformation':
      return _$waitingForMoreInformation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeedbackStatus> _$values =
    BuiltSet<FeedbackStatus>(const <FeedbackStatus>[
  _$new_,
  _$respondedOrFinished,
  _$ignored,
  _$workInProgress,
  _$waitingForMoreInformation,
]);

class _$FeedbackStatusMeta {
  const _$FeedbackStatusMeta();
  FeedbackStatus get new_ => _$new_;
  FeedbackStatus get respondedOrFinished => _$respondedOrFinished;
  FeedbackStatus get ignored => _$ignored;
  FeedbackStatus get workInProgress => _$workInProgress;
  FeedbackStatus get waitingForMoreInformation => _$waitingForMoreInformation;
  FeedbackStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<FeedbackStatus> get values => _$values;
}

abstract class _$FeedbackStatusMixin {
  // ignore: non_constant_identifier_names
  _$FeedbackStatusMeta get FeedbackStatus => const _$FeedbackStatusMeta();
}

Serializer<FeedbackStatus> _$feedbackStatusSerializer =
    _$FeedbackStatusSerializer();

class _$FeedbackStatusSerializer
    implements PrimitiveSerializer<FeedbackStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'new_': 'New',
    'respondedOrFinished': 'RespondedOrFinished',
    'ignored': 'Ignored',
    'workInProgress': 'WorkInProgress',
    'waitingForMoreInformation': 'WaitingForMoreInformation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'New': 'new_',
    'RespondedOrFinished': 'respondedOrFinished',
    'Ignored': 'ignored',
    'WorkInProgress': 'workInProgress',
    'WaitingForMoreInformation': 'waitingForMoreInformation',
  };

  @override
  final Iterable<Type> types = const <Type>[FeedbackStatus];
  @override
  final String wireName = 'FeedbackStatus';

  @override
  Object serialize(Serializers serializers, FeedbackStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FeedbackStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FeedbackStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
