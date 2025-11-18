// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_quality_dto_grid_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodQualityDTOGridDTO extends WoodQualityDTOGridDTO {
  @override
  final BuiltList<WoodQualityDTO>? items;
  @override
  final int? total;

  factory _$WoodQualityDTOGridDTO(
          [void Function(WoodQualityDTOGridDTOBuilder)? updates]) =>
      (WoodQualityDTOGridDTOBuilder()..update(updates))._build();

  _$WoodQualityDTOGridDTO._({this.items, this.total}) : super._();
  @override
  WoodQualityDTOGridDTO rebuild(
          void Function(WoodQualityDTOGridDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodQualityDTOGridDTOBuilder toBuilder() =>
      WoodQualityDTOGridDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodQualityDTOGridDTO &&
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
    return (newBuiltValueToStringHelper(r'WoodQualityDTOGridDTO')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class WoodQualityDTOGridDTOBuilder
    implements Builder<WoodQualityDTOGridDTO, WoodQualityDTOGridDTOBuilder> {
  _$WoodQualityDTOGridDTO? _$v;

  ListBuilder<WoodQualityDTO>? _items;
  ListBuilder<WoodQualityDTO> get items =>
      _$this._items ??= ListBuilder<WoodQualityDTO>();
  set items(ListBuilder<WoodQualityDTO>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  WoodQualityDTOGridDTOBuilder() {
    WoodQualityDTOGridDTO._defaults(this);
  }

  WoodQualityDTOGridDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodQualityDTOGridDTO other) {
    _$v = other as _$WoodQualityDTOGridDTO;
  }

  @override
  void update(void Function(WoodQualityDTOGridDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodQualityDTOGridDTO build() => _build();

  _$WoodQualityDTOGridDTO _build() {
    _$WoodQualityDTOGridDTO _$result;
    try {
      _$result = _$v ??
          _$WoodQualityDTOGridDTO._(
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
            r'WoodQualityDTOGridDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
