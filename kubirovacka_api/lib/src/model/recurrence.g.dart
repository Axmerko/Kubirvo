// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurrence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Recurrence extends Recurrence {
  @override
  final RecurrenceCycle? cycle;
  @override
  final int? period;
  @override
  final DateTime? dateTo;
  @override
  final RecurrenceState? state;

  factory _$Recurrence([void Function(RecurrenceBuilder)? updates]) =>
      (RecurrenceBuilder()..update(updates))._build();

  _$Recurrence._({this.cycle, this.period, this.dateTo, this.state})
      : super._();
  @override
  Recurrence rebuild(void Function(RecurrenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurrenceBuilder toBuilder() => RecurrenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recurrence &&
        cycle == other.cycle &&
        period == other.period &&
        dateTo == other.dateTo &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cycle.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, dateTo.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Recurrence')
          ..add('cycle', cycle)
          ..add('period', period)
          ..add('dateTo', dateTo)
          ..add('state', state))
        .toString();
  }
}

class RecurrenceBuilder implements Builder<Recurrence, RecurrenceBuilder> {
  _$Recurrence? _$v;

  RecurrenceCycle? _cycle;
  RecurrenceCycle? get cycle => _$this._cycle;
  set cycle(RecurrenceCycle? cycle) => _$this._cycle = cycle;

  int? _period;
  int? get period => _$this._period;
  set period(int? period) => _$this._period = period;

  DateTime? _dateTo;
  DateTime? get dateTo => _$this._dateTo;
  set dateTo(DateTime? dateTo) => _$this._dateTo = dateTo;

  RecurrenceState? _state;
  RecurrenceState? get state => _$this._state;
  set state(RecurrenceState? state) => _$this._state = state;

  RecurrenceBuilder() {
    Recurrence._defaults(this);
  }

  RecurrenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cycle = $v.cycle;
      _period = $v.period;
      _dateTo = $v.dateTo;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recurrence other) {
    _$v = other as _$Recurrence;
  }

  @override
  void update(void Function(RecurrenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Recurrence build() => _build();

  _$Recurrence _build() {
    final _$result = _$v ??
        _$Recurrence._(
          cycle: cycle,
          period: period,
          dateTo: dateTo,
          state: state,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
