// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_with_performance_dto_grid_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListWithPerformanceDTOGridDTO
    extends WoodLogListWithPerformanceDTOGridDTO {
  @override
  final BuiltList<WoodLogListWithPerformanceDTO>? items;
  @override
  final int? total;

  factory _$WoodLogListWithPerformanceDTOGridDTO(
          [void Function(WoodLogListWithPerformanceDTOGridDTOBuilder)?
              updates]) =>
      (WoodLogListWithPerformanceDTOGridDTOBuilder()..update(updates))._build();

  _$WoodLogListWithPerformanceDTOGridDTO._({this.items, this.total})
      : super._();
  @override
  WoodLogListWithPerformanceDTOGridDTO rebuild(
          void Function(WoodLogListWithPerformanceDTOGridDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListWithPerformanceDTOGridDTOBuilder toBuilder() =>
      WoodLogListWithPerformanceDTOGridDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListWithPerformanceDTOGridDTO &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListWithPerformanceDTOGridDTO')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class WoodLogListWithPerformanceDTOGridDTOBuilder
    implements
        Builder<WoodLogListWithPerformanceDTOGridDTO,
            WoodLogListWithPerformanceDTOGridDTOBuilder> {
  _$WoodLogListWithPerformanceDTOGridDTO? _$v;

  ListBuilder<WoodLogListWithPerformanceDTO>? _items;
  ListBuilder<WoodLogListWithPerformanceDTO> get items =>
      _$this._items ??= ListBuilder<WoodLogListWithPerformanceDTO>();
  set items(ListBuilder<WoodLogListWithPerformanceDTO>? items) =>
      _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  WoodLogListWithPerformanceDTOGridDTOBuilder() {
    WoodLogListWithPerformanceDTOGridDTO._defaults(this);
  }

  WoodLogListWithPerformanceDTOGridDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListWithPerformanceDTOGridDTO other) {
    _$v = other as _$WoodLogListWithPerformanceDTOGridDTO;
  }

  @override
  void update(
      void Function(WoodLogListWithPerformanceDTOGridDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListWithPerformanceDTOGridDTO build() => _build();

  _$WoodLogListWithPerformanceDTOGridDTO _build() {
    _$WoodLogListWithPerformanceDTOGridDTO _$result;
    try {
      _$result = _$v ??
          _$WoodLogListWithPerformanceDTOGridDTO._(
            items: _items?.build(),
            total: total,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogListWithPerformanceDTOGridDTO',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
