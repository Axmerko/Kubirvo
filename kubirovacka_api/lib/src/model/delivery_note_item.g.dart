// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryNoteItem extends DeliveryNoteItem {
  @override
  final String? id;
  @override
  final String? sortimentId;
  @override
  final double? volume;
  @override
  final String? departurePlace;
  @override
  final String? deliveryNoteId;
  @override
  final DeliveryNote? deliveryNote;
  @override
  final Sortiment? sortiment;

  factory _$DeliveryNoteItem(
          [void Function(DeliveryNoteItemBuilder)? updates]) =>
      (DeliveryNoteItemBuilder()..update(updates))._build();

  _$DeliveryNoteItem._(
      {this.id,
      this.sortimentId,
      this.volume,
      this.departurePlace,
      this.deliveryNoteId,
      this.deliveryNote,
      this.sortiment})
      : super._();
  @override
  DeliveryNoteItem rebuild(void Function(DeliveryNoteItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryNoteItemBuilder toBuilder() =>
      DeliveryNoteItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryNoteItem &&
        id == other.id &&
        sortimentId == other.sortimentId &&
        volume == other.volume &&
        departurePlace == other.departurePlace &&
        deliveryNoteId == other.deliveryNoteId &&
        deliveryNote == other.deliveryNote &&
        sortiment == other.sortiment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sortimentId.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, departurePlace.hashCode);
    _$hash = $jc(_$hash, deliveryNoteId.hashCode);
    _$hash = $jc(_$hash, deliveryNote.hashCode);
    _$hash = $jc(_$hash, sortiment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryNoteItem')
          ..add('id', id)
          ..add('sortimentId', sortimentId)
          ..add('volume', volume)
          ..add('departurePlace', departurePlace)
          ..add('deliveryNoteId', deliveryNoteId)
          ..add('deliveryNote', deliveryNote)
          ..add('sortiment', sortiment))
        .toString();
  }
}

class DeliveryNoteItemBuilder
    implements Builder<DeliveryNoteItem, DeliveryNoteItemBuilder> {
  _$DeliveryNoteItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _deliveryNoteId;
  String? get deliveryNoteId => _$this._deliveryNoteId;
  set deliveryNoteId(String? deliveryNoteId) =>
      _$this._deliveryNoteId = deliveryNoteId;

  DeliveryNoteBuilder? _deliveryNote;
  DeliveryNoteBuilder get deliveryNote =>
      _$this._deliveryNote ??= DeliveryNoteBuilder();
  set deliveryNote(DeliveryNoteBuilder? deliveryNote) =>
      _$this._deliveryNote = deliveryNote;

  SortimentBuilder? _sortiment;
  SortimentBuilder get sortiment => _$this._sortiment ??= SortimentBuilder();
  set sortiment(SortimentBuilder? sortiment) => _$this._sortiment = sortiment;

  DeliveryNoteItemBuilder() {
    DeliveryNoteItem._defaults(this);
  }

  DeliveryNoteItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sortimentId = $v.sortimentId;
      _volume = $v.volume;
      _departurePlace = $v.departurePlace;
      _deliveryNoteId = $v.deliveryNoteId;
      _deliveryNote = $v.deliveryNote?.toBuilder();
      _sortiment = $v.sortiment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryNoteItem other) {
    _$v = other as _$DeliveryNoteItem;
  }

  @override
  void update(void Function(DeliveryNoteItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryNoteItem build() => _build();

  _$DeliveryNoteItem _build() {
    _$DeliveryNoteItem _$result;
    try {
      _$result = _$v ??
          _$DeliveryNoteItem._(
            id: id,
            sortimentId: sortimentId,
            volume: volume,
            departurePlace: departurePlace,
            deliveryNoteId: deliveryNoteId,
            deliveryNote: _deliveryNote?.build(),
            sortiment: _sortiment?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryNote';
        _deliveryNote?.build();
        _$failedField = 'sortiment';
        _sortiment?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryNoteItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
