// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_timespan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsTimespan _$today = const StatsTimespan._('today');
const StatsTimespan _$thisWeek = const StatsTimespan._('thisWeek');
const StatsTimespan _$thisMonth = const StatsTimespan._('thisMonth');
const StatsTimespan _$thisYear = const StatsTimespan._('thisYear');
const StatsTimespan _$sinceTheBeginningOfTime =
    const StatsTimespan._('sinceTheBeginningOfTime');

StatsTimespan _$valueOf(String name) {
  switch (name) {
    case 'today':
      return _$today;
    case 'thisWeek':
      return _$thisWeek;
    case 'thisMonth':
      return _$thisMonth;
    case 'thisYear':
      return _$thisYear;
    case 'sinceTheBeginningOfTime':
      return _$sinceTheBeginningOfTime;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsTimespan> _$values =
    BuiltSet<StatsTimespan>(const <StatsTimespan>[
  _$today,
  _$thisWeek,
  _$thisMonth,
  _$thisYear,
  _$sinceTheBeginningOfTime,
]);

class _$StatsTimespanMeta {
  const _$StatsTimespanMeta();
  StatsTimespan get today => _$today;
  StatsTimespan get thisWeek => _$thisWeek;
  StatsTimespan get thisMonth => _$thisMonth;
  StatsTimespan get thisYear => _$thisYear;
  StatsTimespan get sinceTheBeginningOfTime => _$sinceTheBeginningOfTime;
  StatsTimespan valueOf(String name) => _$valueOf(name);
  BuiltSet<StatsTimespan> get values => _$values;
}

abstract class _$StatsTimespanMixin {
  // ignore: non_constant_identifier_names
  _$StatsTimespanMeta get StatsTimespan => const _$StatsTimespanMeta();
}

Serializer<StatsTimespan> _$statsTimespanSerializer =
    _$StatsTimespanSerializer();

class _$StatsTimespanSerializer implements PrimitiveSerializer<StatsTimespan> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'today': 'Today',
    'thisWeek': 'ThisWeek',
    'thisMonth': 'ThisMonth',
    'thisYear': 'ThisYear',
    'sinceTheBeginningOfTime': 'SinceTheBeginningOfTime',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Today': 'today',
    'ThisWeek': 'thisWeek',
    'ThisMonth': 'thisMonth',
    'ThisYear': 'thisYear',
    'SinceTheBeginningOfTime': 'sinceTheBeginningOfTime',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsTimespan];
  @override
  final String wireName = 'StatsTimespan';

  @override
  Object serialize(Serializers serializers, StatsTimespan object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatsTimespan deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatsTimespan.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
