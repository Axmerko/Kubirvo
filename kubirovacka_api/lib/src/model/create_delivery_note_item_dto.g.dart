// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_delivery_note_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDeliveryNoteItemDTO extends CreateDeliveryNoteItemDTO {
  @override
  final String? sortimentId;
  @override
  final double? volume;
  @override
  final String? departurePlace;

  factory _$CreateDeliveryNoteItemDTO(
          [void Function(CreateDeliveryNoteItemDTOBuilder)? updates]) =>
      (CreateDeliveryNoteItemDTOBuilder()..update(updates))._build();

  _$CreateDeliveryNoteItemDTO._(
      {this.sortimentId, this.volume, this.departurePlace})
      : super._();
  @override
  CreateDeliveryNoteItemDTO rebuild(
          void Function(CreateDeliveryNoteItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDeliveryNoteItemDTOBuilder toBuilder() =>
      CreateDeliveryNoteItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDeliveryNoteItemDTO &&
        sortimentId == other.sortimentId &&
        volume == other.volume &&
        departurePlace == other.departurePlace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sortimentId.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, departurePlace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDeliveryNoteItemDTO')
          ..add('sortimentId', sortimentId)
          ..add('volume', volume)
          ..add('departurePlace', departurePlace))
        .toString();
  }
}

class CreateDeliveryNoteItemDTOBuilder
    implements
        Builder<CreateDeliveryNoteItemDTO, CreateDeliveryNoteItemDTOBuilder> {
  _$CreateDeliveryNoteItemDTO? _$v;

  String? _sortimentId;
  String? get sortimentId => _$this._sortimentId;
  set sortimentId(String? sortimentId) => _$this._sortimentId = sortimentId;

  double? _volume;
  double? get volume => _$this._volume;
  set volume(double? volume) => _$this._volume = volume;

  String? _departurePlace;
  String? get departurePlace => _$this._departurePlace;
  set departurePlace(String? departurePlace) =>
      _$this._departurePlace = departurePlace;

  CreateDeliveryNoteItemDTOBuilder() {
    CreateDeliveryNoteItemDTO._defaults(this);
  }

  CreateDeliveryNoteItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sortimentId = $v.sortimentId;
      _volume = $v.volume;
      _departurePlace = $v.departurePlace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDeliveryNoteItemDTO other) {
    _$v = other as _$CreateDeliveryNoteItemDTO;
  }

  @override
  void update(void Function(CreateDeliveryNoteItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDeliveryNoteItemDTO build() => _build();

  _$CreateDeliveryNoteItemDTO _build() {
    final _$result = _$v ??
        _$CreateDeliveryNoteItemDTO._(
          sortimentId: sortimentId,
          volume: volume,
          departurePlace: departurePlace,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
