// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decimal_super_admin_stats_year.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DecimalSuperAdminStatsYear extends DecimalSuperAdminStatsYear {
  @override
  final double? total;
  @override
  final BuiltMap<String, double?>? months;

  factory _$DecimalSuperAdminStatsYear(
          [void Function(DecimalSuperAdminStatsYearBuilder)? updates]) =>
      (DecimalSuperAdminStatsYearBuilder()..update(updates))._build();

  _$DecimalSuperAdminStatsYear._({this.total, this.months}) : super._();
  @override
  DecimalSuperAdminStatsYear rebuild(
          void Function(DecimalSuperAdminStatsYearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecimalSuperAdminStatsYearBuilder toBuilder() =>
      DecimalSuperAdminStatsYearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecimalSuperAdminStatsYear &&
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
    return (newBuiltValueToStringHelper(r'DecimalSuperAdminStatsYear')
          ..add('total', total)
          ..add('months', months))
        .toString();
  }
}

class DecimalSuperAdminStatsYearBuilder
    implements
        Builder<DecimalSuperAdminStatsYear, DecimalSuperAdminStatsYearBuilder> {
  _$DecimalSuperAdminStatsYear? _$v;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  MapBuilder<String, double?>? _months;
  MapBuilder<String, double?> get months =>
      _$this._months ??= MapBuilder<String, double?>();
  set months(MapBuilder<String, double?>? months) => _$this._months = months;

  DecimalSuperAdminStatsYearBuilder() {
    DecimalSuperAdminStatsYear._defaults(this);
  }

  DecimalSuperAdminStatsYearBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _months = $v.months?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecimalSuperAdminStatsYear other) {
    _$v = other as _$DecimalSuperAdminStatsYear;
  }

  @override
  void update(void Function(DecimalSuperAdminStatsYearBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecimalSuperAdminStatsYear build() => _build();

  _$DecimalSuperAdminStatsYear _build() {
    _$DecimalSuperAdminStatsYear _$result;
    try {
      _$result = _$v ??
          _$DecimalSuperAdminStatsYear._(
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
            r'DecimalSuperAdminStatsYear', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
