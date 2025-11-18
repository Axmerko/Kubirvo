// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_note_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeliveryNoteDTO extends GetDeliveryNoteDTO {
  @override
  final String? id;
  @override
  final String? licensePlate;
  @override
  final DateTime? dateOfDeparture;
  @override
  final String? reportNumber;
  @override
  final String? deliveryNoteNumber;
  @override
  final String? ownerGroupGuid;
  @override
  final String? ownerUserGuid;
  @override
  final String? customerId;
  @override
  final String? carrierId;
  @override
  final String? supplierId;
  @override
  final int? numberOfItems;
  @override
  final bool? locked;

  factory _$GetDeliveryNoteDTO(
          [void Function(GetDeliveryNoteDTOBuilder)? updates]) =>
      (GetDeliveryNoteDTOBuilder()..update(updates))._build();

  _$GetDeliveryNoteDTO._(
      {this.id,
      this.licensePlate,
      this.dateOfDeparture,
      this.reportNumber,
      this.deliveryNoteNumber,
      this.ownerGroupGuid,
      this.ownerUserGuid,
      this.customerId,
      this.carrierId,
      this.supplierId,
      this.numberOfItems,
      this.locked})
      : super._();
  @override
  GetDeliveryNoteDTO rebuild(
          void Function(GetDeliveryNoteDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeliveryNoteDTOBuilder toBuilder() =>
      GetDeliveryNoteDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeliveryNoteDTO &&
        id == other.id &&
        licensePlate == other.licensePlate &&
        dateOfDeparture == other.dateOfDeparture &&
        reportNumber == other.reportNumber &&
        deliveryNoteNumber == other.deliveryNoteNumber &&
        ownerGroupGuid == other.ownerGroupGuid &&
        ownerUserGuid == other.ownerUserGuid &&
        customerId == other.customerId &&
        carrierId == other.carrierId &&
        supplierId == other.supplierId &&
        numberOfItems == other.numberOfItems &&
        locked == other.locked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, dateOfDeparture.hashCode);
    _$hash = $jc(_$hash, reportNumber.hashCode);
    _$hash = $jc(_$hash, deliveryNoteNumber.hashCode);
    _$hash = $jc(_$hash, ownerGroupGuid.hashCode);
    _$hash = $jc(_$hash, ownerUserGuid.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, carrierId.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, numberOfItems.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetDeliveryNoteDTO')
          ..add('id', id)
          ..add('licensePlate', licensePlate)
          ..add('dateOfDeparture', dateOfDeparture)
          ..add('reportNumber', reportNumber)
          ..add('deliveryNoteNumber', deliveryNoteNumber)
          ..add('ownerGroupGuid', ownerGroupGuid)
          ..add('ownerUserGuid', ownerUserGuid)
          ..add('customerId', customerId)
          ..add('carrierId', carrierId)
          ..add('supplierId', supplierId)
          ..add('numberOfItems', numberOfItems)
          ..add('locked', locked))
        .toString();
  }
}

class GetDeliveryNoteDTOBuilder
    implements Builder<GetDeliveryNoteDTO, GetDeliveryNoteDTOBuilder> {
  _$GetDeliveryNoteDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  DateTime? _dateOfDeparture;
  DateTime? get dateOfDeparture => _$this._dateOfDeparture;
  set dateOfDeparture(DateTime? dateOfDeparture) =>
      _$this._dateOfDeparture = dateOfDeparture;

  String? _reportNumber;
  String? get reportNumber => _$this._reportNumber;
  set reportNumber(String? reportNumber) => _$this._reportNumber = reportNumber;

  String? _deliveryNoteNumber;
  String? get deliveryNoteNumber => _$this._deliveryNoteNumber;
  set deliveryNoteNumber(String? deliveryNoteNumber) =>
      _$this._deliveryNoteNumber = deliveryNoteNumber;

  String? _ownerGroupGuid;
  String? get ownerGroupGuid => _$this._ownerGroupGuid;
  set ownerGroupGuid(String? ownerGroupGuid) =>
      _$this._ownerGroupGuid = ownerGroupGuid;

  String? _ownerUserGuid;
  String? get ownerUserGuid => _$this._ownerUserGuid;
  set ownerUserGuid(String? ownerUserGuid) =>
      _$this._ownerUserGuid = ownerUserGuid;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _carrierId;
  String? get carrierId => _$this._carrierId;
  set carrierId(String? carrierId) => _$this._carrierId = carrierId;

  String? _supplierId;
  String? get supplierId => _$this._supplierId;
  set supplierId(String? supplierId) => _$this._supplierId = supplierId;

  int? _numberOfItems;
  int? get numberOfItems => _$this._numberOfItems;
  set numberOfItems(int? numberOfItems) =>
      _$this._numberOfItems = numberOfItems;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  GetDeliveryNoteDTOBuilder() {
    GetDeliveryNoteDTO._defaults(this);
  }

  GetDeliveryNoteDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _licensePlate = $v.licensePlate;
      _dateOfDeparture = $v.dateOfDeparture;
      _reportNumber = $v.reportNumber;
      _deliveryNoteNumber = $v.deliveryNoteNumber;
      _ownerGroupGuid = $v.ownerGroupGuid;
      _ownerUserGuid = $v.ownerUserGuid;
      _customerId = $v.customerId;
      _carrierId = $v.carrierId;
      _supplierId = $v.supplierId;
      _numberOfItems = $v.numberOfItems;
      _locked = $v.locked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeliveryNoteDTO other) {
    _$v = other as _$GetDeliveryNoteDTO;
  }

  @override
  void update(void Function(GetDeliveryNoteDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeliveryNoteDTO build() => _build();

  _$GetDeliveryNoteDTO _build() {
    final _$result = _$v ??
        _$GetDeliveryNoteDTO._(
          id: id,
          licensePlate: licensePlate,
          dateOfDeparture: dateOfDeparture,
          reportNumber: reportNumber,
          deliveryNoteNumber: deliveryNoteNumber,
          ownerGroupGuid: ownerGroupGuid,
          ownerUserGuid: ownerUserGuid,
          customerId: customerId,
          carrierId: carrierId,
          supplierId: supplierId,
          numberOfItems: numberOfItems,
          locked: locked,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
