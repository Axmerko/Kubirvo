// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_filter_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GridFilterQuery extends GridFilterQuery {
  @override
  final String? search;
  @override
  final BuiltList<GridFilterRule>? rules;

  factory _$GridFilterQuery([void Function(GridFilterQueryBuilder)? updates]) =>
      (GridFilterQueryBuilder()..update(updates))._build();

  _$GridFilterQuery._({this.search, this.rules}) : super._();
  @override
  GridFilterQuery rebuild(void Function(GridFilterQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GridFilterQueryBuilder toBuilder() => GridFilterQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GridFilterQuery &&
        search == other.search &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GridFilterQuery')
          ..add('search', search)
          ..add('rules', rules))
        .toString();
  }
}

class GridFilterQueryBuilder
    implements Builder<GridFilterQuery, GridFilterQueryBuilder> {
  _$GridFilterQuery? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  ListBuilder<GridFilterRule>? _rules;
  ListBuilder<GridFilterRule> get rules =>
      _$this._rules ??= ListBuilder<GridFilterRule>();
  set rules(ListBuilder<GridFilterRule>? rules) => _$this._rules = rules;

  GridFilterQueryBuilder() {
    GridFilterQuery._defaults(this);
  }

  GridFilterQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _rules = $v.rules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GridFilterQuery other) {
    _$v = other as _$GridFilterQuery;
  }

  @override
  void update(void Function(GridFilterQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GridFilterQuery build() => _build();

  _$GridFilterQuery _build() {
    _$GridFilterQuery _$result;
    try {
      _$result = _$v ??
          _$GridFilterQuery._(
            search: search,
            rules: _rules?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        _rules?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GridFilterQuery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
