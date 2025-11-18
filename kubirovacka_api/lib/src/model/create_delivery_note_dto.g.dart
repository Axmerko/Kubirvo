// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_delivery_note_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDeliveryNoteDTO extends CreateDeliveryNoteDTO {
  @override
  final String deliveryNoteNumber;
  @override
  final String? guid;
  @override
  final String? licensePlate;
  @override
  final DateTime? dateOfDeparture;
  @override
  final String? reportNumber;
  @override
  final String? customerId;
  @override
  final String? carrierId;
  @override
  final String? supplierId;
  @override
  final BuiltList<CreateDeliveryNoteItemDTO>? deliveryNoteItemDtos;

  factory _$CreateDeliveryNoteDTO(
          [void Function(CreateDeliveryNoteDTOBuilder)? updates]) =>
      (CreateDeliveryNoteDTOBuilder()..update(updates))._build();

  _$CreateDeliveryNoteDTO._(
      {required this.deliveryNoteNumber,
      this.guid,
      this.licensePlate,
      this.dateOfDeparture,
      this.reportNumber,
      this.customerId,
      this.carrierId,
      this.supplierId,
      this.deliveryNoteItemDtos})
      : super._();
  @override
  CreateDeliveryNoteDTO rebuild(
          void Function(CreateDeliveryNoteDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDeliveryNoteDTOBuilder toBuilder() =>
      CreateDeliveryNoteDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDeliveryNoteDTO &&
        deliveryNoteNumber == other.deliveryNoteNumber &&
        guid == other.guid &&
        licensePlate == other.licensePlate &&
        dateOfDeparture == other.dateOfDeparture &&
        reportNumber == other.reportNumber &&
        customerId == other.customerId &&
        carrierId == other.carrierId &&
        supplierId == other.supplierId &&
        deliveryNoteItemDtos == other.deliveryNoteItemDtos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryNoteNumber.hashCode);
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, dateOfDeparture.hashCode);
    _$hash = $jc(_$hash, reportNumber.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, carrierId.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, deliveryNoteItemDtos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDeliveryNoteDTO')
          ..add('deliveryNoteNumber', deliveryNoteNumber)
          ..add('guid', guid)
          ..add('licensePlate', licensePlate)
          ..add('dateOfDeparture', dateOfDeparture)
          ..add('reportNumber', reportNumber)
          ..add('customerId', customerId)
          ..add('carrierId', carrierId)
          ..add('supplierId', supplierId)
          ..add('deliveryNoteItemDtos', deliveryNoteItemDtos))
        .toString();
  }
}

class CreateDeliveryNoteDTOBuilder
    implements Builder<CreateDeliveryNoteDTO, CreateDeliveryNoteDTOBuilder> {
  _$CreateDeliveryNoteDTO? _$v;

  String? _deliveryNoteNumber;
  String? get deliveryNoteNumber => _$this._deliveryNoteNumber;
  set deliveryNoteNumber(String? deliveryNoteNumber) =>
      _$this._deliveryNoteNumber = deliveryNoteNumber;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

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

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _carrierId;
  String? get carrierId => _$this._carrierId;
  set carrierId(String? carrierId) => _$this._carrierId = carrierId;

  String? _supplierId;
  String? get supplierId => _$this._supplierId;
  set supplierId(String? supplierId) => _$this._supplierId = supplierId;

  ListBuilder<CreateDeliveryNoteItemDTO>? _deliveryNoteItemDtos;
  ListBuilder<CreateDeliveryNoteItemDTO> get deliveryNoteItemDtos =>
      _$this._deliveryNoteItemDtos ??= ListBuilder<CreateDeliveryNoteItemDTO>();
  set deliveryNoteItemDtos(
          ListBuilder<CreateDeliveryNoteItemDTO>? deliveryNoteItemDtos) =>
      _$this._deliveryNoteItemDtos = deliveryNoteItemDtos;

  CreateDeliveryNoteDTOBuilder() {
    CreateDeliveryNoteDTO._defaults(this);
  }

  CreateDeliveryNoteDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryNoteNumber = $v.deliveryNoteNumber;
      _guid = $v.guid;
      _licensePlate = $v.licensePlate;
      _dateOfDeparture = $v.dateOfDeparture;
      _reportNumber = $v.reportNumber;
      _customerId = $v.customerId;
      _carrierId = $v.carrierId;
      _supplierId = $v.supplierId;
      _deliveryNoteItemDtos = $v.deliveryNoteItemDtos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDeliveryNoteDTO other) {
    _$v = other as _$CreateDeliveryNoteDTO;
  }

  @override
  void update(void Function(CreateDeliveryNoteDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDeliveryNoteDTO build() => _build();

  _$CreateDeliveryNoteDTO _build() {
    _$CreateDeliveryNoteDTO _$result;
    try {
      _$result = _$v ??
          _$CreateDeliveryNoteDTO._(
            deliveryNoteNumber: BuiltValueNullFieldError.checkNotNull(
                deliveryNoteNumber,
                r'CreateDeliveryNoteDTO',
                'deliveryNoteNumber'),
            guid: guid,
            licensePlate: licensePlate,
            dateOfDeparture: dateOfDeparture,
            reportNumber: reportNumber,
            customerId: customerId,
            carrierId: carrierId,
            supplierId: supplierId,
            deliveryNoteItemDtos: _deliveryNoteItemDtos?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryNoteItemDtos';
        _deliveryNoteItemDtos?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateDeliveryNoteDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
