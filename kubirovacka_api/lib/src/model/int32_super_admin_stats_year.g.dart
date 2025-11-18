// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'int32_super_admin_stats_year.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Int32SuperAdminStatsYear extends Int32SuperAdminStatsYear {
  @override
  final int? total;
  @override
  final BuiltMap<String, int?>? months;

  factory _$Int32SuperAdminStatsYear(
          [void Function(Int32SuperAdminStatsYearBuilder)? updates]) =>
      (Int32SuperAdminStatsYearBuilder()..update(updates))._build();

  _$Int32SuperAdminStatsYear._({this.total, this.months}) : super._();
  @override
  Int32SuperAdminStatsYear rebuild(
          void Function(Int32SuperAdminStatsYearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Int32SuperAdminStatsYearBuilder toBuilder() =>
      Int32SuperAdminStatsYearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Int32SuperAdminStatsYear &&
        total == other.total &&
        months == other.months;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, months.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Int32SuperAdminStatsYear')
          ..add('total', total)
          ..add('months', months))
        .toString();
  }
}

class Int32SuperAdminStatsYearBuilder
    implements
        Builder<Int32SuperAdminStatsYear, Int32SuperAdminStatsYearBuilder> {
  _$Int32SuperAdminStatsYear? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MapBuilder<String, int?>? _months;
  MapBuilder<String, int?> get months =>
      _$this._months ??= MapBuilder<String, int?>();
  set months(MapBuilder<String, int?>? months) => _$this._months = months;

  Int32SuperAdminStatsYearBuilder() {
    Int32SuperAdminStatsYear._defaults(this);
  }

  Int32SuperAdminStatsYearBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _months = $v.months?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Int32SuperAdminStatsYear other) {
    _$v = other as _$Int32SuperAdminStatsYear;
  }

  @override
  void update(void Function(Int32SuperAdminStatsYearBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Int32SuperAdminStatsYear build() => _build();

  _$Int32SuperAdminStatsYear _build() {
    _$Int32SuperAdminStatsYear _$result;
    try {
      _$result = _$v ??
          _$Int32SuperAdminStatsYear._(
            total: total,
            months: _months?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'months';
        _months?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Int32SuperAdminStatsYear', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
