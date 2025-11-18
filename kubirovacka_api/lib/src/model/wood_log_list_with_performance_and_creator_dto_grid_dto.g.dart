// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_with_performance_and_creator_dto_grid_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListWithPerformanceAndCreatorDTOGridDTO
    extends WoodLogListWithPerformanceAndCreatorDTOGridDTO {
  @override
  final BuiltList<WoodLogListWithPerformanceAndCreatorDTO>? items;
  @override
  final int? total;

  factory _$WoodLogListWithPerformanceAndCreatorDTOGridDTO(
          [void Function(WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder)?
              updates]) =>
      (WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder()..update(updates))
          ._build();

  _$WoodLogListWithPerformanceAndCreatorDTOGridDTO._({this.items, this.total})
      : super._();
  @override
  WoodLogListWithPerformanceAndCreatorDTOGridDTO rebuild(
          void Function(WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder toBuilder() =>
      WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListWithPerformanceAndCreatorDTOGridDTO &&
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
    return (newBuiltValueToStringHelper(
            r'WoodLogListWithPerformanceAndCreatorDTOGridDTO')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder
    implements
        Builder<WoodLogListWithPerformanceAndCreatorDTOGridDTO,
            WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder> {
  _$WoodLogListWithPerformanceAndCreatorDTOGridDTO? _$v;

  ListBuilder<WoodLogListWithPerformanceAndCreatorDTO>? _items;
  ListBuilder<WoodLogListWithPerformanceAndCreatorDTO> get items =>
      _$this._items ??= ListBuilder<WoodLogListWithPerformanceAndCreatorDTO>();
  set items(ListBuilder<WoodLogListWithPerformanceAndCreatorDTO>? items) =>
      _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder() {
    WoodLogListWithPerformanceAndCreatorDTOGridDTO._defaults(this);
  }

  WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListWithPerformanceAndCreatorDTOGridDTO other) {
    _$v = other as _$WoodLogListWithPerformanceAndCreatorDTOGridDTO;
  }

  @override
  void update(
      void Function(WoodLogListWithPerformanceAndCreatorDTOGridDTOBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListWithPerformanceAndCreatorDTOGridDTO build() => _build();

  _$WoodLogListWithPerformanceAndCreatorDTOGridDTO _build() {
    _$WoodLogListWithPerformanceAndCreatorDTOGridDTO _$result;
    try {
      _$result = _$v ??
          _$WoodLogListWithPerformanceAndCreatorDTOGridDTO._(
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
            r'WoodLogListWithPerformanceAndCreatorDTOGridDTO',
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
