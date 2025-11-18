// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_note_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeliveryNoteItemDTO extends GetDeliveryNoteItemDTO {
  @override
  final SortimentDTO? sortiment;
  @override
  final double? volume;
  @override
  final String? departurePlace;

  factory _$GetDeliveryNoteItemDTO(
          [void Function(GetDeliveryNoteItemDTOBuilder)? updates]) =>
      (GetDeliveryNoteItemDTOBuilder()..update(updates))._build();

  _$GetDeliveryNoteItemDTO._({this.sortiment, this.volume, this.departurePlace})
      : super._();
  @override
  GetDeliveryNoteItemDTO rebuild(
          void Function(GetDeliveryNoteItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeliveryNoteItemDTOBuilder toBuilder() =>
      GetDeliveryNoteItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeliveryNoteItemDTO &&
        sortiment == other.sortiment &&
        volume == other.volume &&
        departurePlace == other.departurePlace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sortiment.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, departurePlace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetDeliveryNoteItemDTO')
          ..add('sortiment', sortiment)
          ..add('volume', volume)
          ..add('departurePlace', departurePlace))
        .toString();
  }
}

class GetDeliveryNoteItemDTOBuilder
    implements Builder<GetDeliveryNoteItemDTO, GetDeliveryNoteItemDTOBuilder> {
  _$GetDeliveryNoteItemDTO? _$v;

  SortimentDTOBuilder? _sortiment;
  SortimentDTOBuilder get sortiment =>
      _$this._sortiment ??= SortimentDTOBuilder();
  set sortiment(SortimentDTOBuilder? sortiment) =>
      _$this._sortiment = sortiment;

  double? _volume;
  double? get volume => _$this._volume;
  set volume(double? volume) => _$this._volume = volume;

  String? _departurePlace;
  String? get departurePlace => _$this._departurePlace;
  set departurePlace(String? departurePlace) =>
      _$this._departurePlace = departurePlace;

  GetDeliveryNoteItemDTOBuilder() {
    GetDeliveryNoteItemDTO._defaults(this);
  }

  GetDeliveryNoteItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sortiment = $v.sortiment?.toBuilder();
      _volume = $v.volume;
      _departurePlace = $v.departurePlace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeliveryNoteItemDTO other) {
    _$v = other as _$GetDeliveryNoteItemDTO;
  }

  @override
  void update(void Function(GetDeliveryNoteItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeliveryNoteItemDTO build() => _build();

  _$GetDeliveryNoteItemDTO _build() {
    _$GetDeliveryNoteItemDTO _$result;
    try {
      _$result = _$v ??
          _$GetDeliveryNoteItemDTO._(
            sortiment: _sortiment?.build(),
            volume: volume,
            departurePlace: departurePlace,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sortiment';
        _sortiment?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetDeliveryNoteItemDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
