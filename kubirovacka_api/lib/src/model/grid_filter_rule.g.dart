// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_filter_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GridFilterRule extends GridFilterRule {
  @override
  final String? columnName;
  @override
  final String? value;

  factory _$GridFilterRule([void Function(GridFilterRuleBuilder)? updates]) =>
      (GridFilterRuleBuilder()..update(updates))._build();

  _$GridFilterRule._({this.columnName, this.value}) : super._();
  @override
  GridFilterRule rebuild(void Function(GridFilterRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GridFilterRuleBuilder toBuilder() => GridFilterRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GridFilterRule &&
        columnName == other.columnName &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, columnName.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GridFilterRule')
          ..add('columnName', columnName)
          ..add('value', value))
        .toString();
  }
}

class GridFilterRuleBuilder
    implements Builder<GridFilterRule, GridFilterRuleBuilder> {
  _$GridFilterRule? _$v;

  String? _columnName;
  String? get columnName => _$this._columnName;
  set columnName(String? columnName) => _$this._columnName = columnName;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GridFilterRuleBuilder() {
    GridFilterRule._defaults(this);
  }

  GridFilterRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _columnName = $v.columnName;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GridFilterRule other) {
    _$v = other as _$GridFilterRule;
  }

  @override
  void update(void Function(GridFilterRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GridFilterRule build() => _build();

  _$GridFilterRule _build() {
    final _$result = _$v ??
        _$GridFilterRule._(
          columnName: columnName,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
