// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PricingOptions extends PricingOptions {
  @override
  final int? monthlyPrice;
  @override
  final int? yearlyPrice;

  factory _$PricingOptions([void Function(PricingOptionsBuilder)? updates]) =>
      (PricingOptionsBuilder()..update(updates))._build();

  _$PricingOptions._({this.monthlyPrice, this.yearlyPrice}) : super._();
  @override
  PricingOptions rebuild(void Function(PricingOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingOptionsBuilder toBuilder() => PricingOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PricingOptions &&
        monthlyPrice == other.monthlyPrice &&
        yearlyPrice == other.yearlyPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, monthlyPrice.hashCode);
    _$hash = $jc(_$hash, yearlyPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PricingOptions')
          ..add('monthlyPrice', monthlyPrice)
          ..add('yearlyPrice', yearlyPrice))
        .toString();
  }
}

class PricingOptionsBuilder
    implements Builder<PricingOptions, PricingOptionsBuilder> {
  _$PricingOptions? _$v;

  int? _monthlyPrice;
  int? get monthlyPrice => _$this._monthlyPrice;
  set monthlyPrice(int? monthlyPrice) => _$this._monthlyPrice = monthlyPrice;

  int? _yearlyPrice;
  int? get yearlyPrice => _$this._yearlyPrice;
  set yearlyPrice(int? yearlyPrice) => _$this._yearlyPrice = yearlyPrice;

  PricingOptionsBuilder() {
    PricingOptions._defaults(this);
  }

  PricingOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _monthlyPrice = $v.monthlyPrice;
      _yearlyPrice = $v.yearlyPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PricingOptions other) {
    _$v = other as _$PricingOptions;
  }

  @override
  void update(void Function(PricingOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PricingOptions build() => _build();

  _$PricingOptions _build() {
    final _$result = _$v ??
        _$PricingOptions._(
          monthlyPrice: monthlyPrice,
          yearlyPrice: yearlyPrice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
