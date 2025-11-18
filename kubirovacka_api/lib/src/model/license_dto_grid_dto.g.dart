// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_dto_grid_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseDTOGridDTO extends LicenseDTOGridDTO {
  @override
  final BuiltList<LicenseDTO>? items;
  @override
  final int? total;

  factory _$LicenseDTOGridDTO(
          [void Function(LicenseDTOGridDTOBuilder)? updates]) =>
      (LicenseDTOGridDTOBuilder()..update(updates))._build();

  _$LicenseDTOGridDTO._({this.items, this.total}) : super._();
  @override
  LicenseDTOGridDTO rebuild(void Function(LicenseDTOGridDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseDTOGridDTOBuilder toBuilder() =>
      LicenseDTOGridDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseDTOGridDTO &&
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
    return (newBuiltValueToStringHelper(r'LicenseDTOGridDTO')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class LicenseDTOGridDTOBuilder
    implements Builder<LicenseDTOGridDTO, LicenseDTOGridDTOBuilder> {
  _$LicenseDTOGridDTO? _$v;

  ListBuilder<LicenseDTO>? _items;
  ListBuilder<LicenseDTO> get items =>
      _$this._items ??= ListBuilder<LicenseDTO>();
  set items(ListBuilder<LicenseDTO>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  LicenseDTOGridDTOBuilder() {
    LicenseDTOGridDTO._defaults(this);
  }

  LicenseDTOGridDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseDTOGridDTO other) {
    _$v = other as _$LicenseDTOGridDTO;
  }

  @override
  void update(void Function(LicenseDTOGridDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseDTOGridDTO build() => _build();

  _$LicenseDTOGridDTO _build() {
    _$LicenseDTOGridDTO _$result;
    try {
      _$result = _$v ??
          _$LicenseDTOGridDTO._(
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
            r'LicenseDTOGridDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
