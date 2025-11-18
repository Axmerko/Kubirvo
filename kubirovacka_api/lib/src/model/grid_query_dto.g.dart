// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_query_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GridQueryDTO extends GridQueryDTO {
  @override
  final String? sort;
  @override
  final String? order;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final GridFilterQuery? filterQuery;

  factory _$GridQueryDTO([void Function(GridQueryDTOBuilder)? updates]) =>
      (GridQueryDTOBuilder()..update(updates))._build();

  _$GridQueryDTO._(
      {this.sort, this.order, this.limit, this.page, this.filterQuery})
      : super._();
  @override
  GridQueryDTO rebuild(void Function(GridQueryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GridQueryDTOBuilder toBuilder() => GridQueryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GridQueryDTO &&
        sort == other.sort &&
        order == other.order &&
        limit == other.limit &&
        page == other.page &&
        filterQuery == other.filterQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, filterQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GridQueryDTO')
          ..add('sort', sort)
          ..add('order', order)
          ..add('limit', limit)
          ..add('page', page)
          ..add('filterQuery', filterQuery))
        .toString();
  }
}

class GridQueryDTOBuilder
    implements Builder<GridQueryDTO, GridQueryDTOBuilder> {
  _$GridQueryDTO? _$v;

  String? _sort;
  String? get sort => _$this._sort;
  set sort(String? sort) => _$this._sort = sort;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GridFilterQueryBuilder? _filterQuery;
  GridFilterQueryBuilder get filterQuery =>
      _$this._filterQuery ??= GridFilterQueryBuilder();
  set filterQuery(GridFilterQueryBuilder? filterQuery) =>
      _$this._filterQuery = filterQuery;

  GridQueryDTOBuilder() {
    GridQueryDTO._defaults(this);
  }

  GridQueryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sort = $v.sort;
      _order = $v.order;
      _limit = $v.limit;
      _page = $v.page;
      _filterQuery = $v.filterQuery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GridQueryDTO other) {
    _$v = other as _$GridQueryDTO;
  }

  @override
  void update(void Function(GridQueryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GridQueryDTO build() => _build();

  _$GridQueryDTO _build() {
    _$GridQueryDTO _$result;
    try {
      _$result = _$v ??
          _$GridQueryDTO._(
            sort: sort,
            order: order,
            limit: limit,
            page: page,
            filterQuery: _filterQuery?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterQuery';
        _filterQuery?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GridQueryDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
