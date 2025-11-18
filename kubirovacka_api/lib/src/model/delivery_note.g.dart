// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryNote extends DeliveryNote {
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? licensePlate;
  @override
  final DateTime? dateOfDeparture;
  @override
  final String? reportNumber;
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
  final bool? exported;
  @override
  final bool? locked;
  @override
  final String? deliveryNoteNumber;
  @override
  final Company? customer;
  @override
  final Company? carrier;
  @override
  final Company? supplier;
  @override
  final Group? ownerGroup;
  @override
  final User? ownerUser;
  @override
  final BuiltList<DeliveryNoteItem>? deliveryNoteItems;
  @override
  final BuiltList<DeliveryNotePhoto>? deliveryNotePhotos;

  factory _$DeliveryNote([void Function(DeliveryNoteBuilder)? updates]) =>
      (DeliveryNoteBuilder()..update(updates))._build();

  _$DeliveryNote._(
      {this.id,
      this.createdAt,
      this.licensePlate,
      this.dateOfDeparture,
      this.reportNumber,
      this.ownerGroupGuid,
      this.ownerUserGuid,
      this.customerId,
      this.carrierId,
      this.supplierId,
      this.exported,
      this.locked,
      this.deliveryNoteNumber,
      this.customer,
      this.carrier,
      this.supplier,
      this.ownerGroup,
      this.ownerUser,
      this.deliveryNoteItems,
      this.deliveryNotePhotos})
      : super._();
  @override
  DeliveryNote rebuild(void Function(DeliveryNoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryNoteBuilder toBuilder() => DeliveryNoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryNote &&
        id == other.id &&
        createdAt == other.createdAt &&
        licensePlate == other.licensePlate &&
        dateOfDeparture == other.dateOfDeparture &&
        reportNumber == other.reportNumber &&
        ownerGroupGuid == other.ownerGroupGuid &&
        ownerUserGuid == other.ownerUserGuid &&
        customerId == other.customerId &&
        carrierId == other.carrierId &&
        supplierId == other.supplierId &&
        exported == other.exported &&
        locked == other.locked &&
        deliveryNoteNumber == other.deliveryNoteNumber &&
        customer == other.customer &&
        carrier == other.carrier &&
        supplier == other.supplier &&
        ownerGroup == other.ownerGroup &&
        ownerUser == other.ownerUser &&
        deliveryNoteItems == other.deliveryNoteItems &&
        deliveryNotePhotos == other.deliveryNotePhotos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, dateOfDeparture.hashCode);
    _$hash = $jc(_$hash, reportNumber.hashCode);
    _$hash = $jc(_$hash, ownerGroupGuid.hashCode);
    _$hash = $jc(_$hash, ownerUserGuid.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, carrierId.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, exported.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, deliveryNoteNumber.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, carrier.hashCode);
    _$hash = $jc(_$hash, supplier.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, ownerUser.hashCode);
    _$hash = $jc(_$hash, deliveryNoteItems.hashCode);
    _$hash = $jc(_$hash, deliveryNotePhotos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryNote')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('licensePlate', licensePlate)
          ..add('dateOfDeparture', dateOfDeparture)
          ..add('reportNumber', reportNumber)
          ..add('ownerGroupGuid', ownerGroupGuid)
          ..add('ownerUserGuid', ownerUserGuid)
          ..add('customerId', customerId)
          ..add('carrierId', carrierId)
          ..add('supplierId', supplierId)
          ..add('exported', exported)
          ..add('locked', locked)
          ..add('deliveryNoteNumber', deliveryNoteNumber)
          ..add('customer', customer)
          ..add('carrier', carrier)
          ..add('supplier', supplier)
          ..add('ownerGroup', ownerGroup)
          ..add('ownerUser', ownerUser)
          ..add('deliveryNoteItems', deliveryNoteItems)
          ..add('deliveryNotePhotos', deliveryNotePhotos))
        .toString();
  }
}

class DeliveryNoteBuilder
    implements Builder<DeliveryNote, DeliveryNoteBuilder> {
  _$DeliveryNote? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

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

  bool? _exported;
  bool? get exported => _$this._exported;
  set exported(bool? exported) => _$this._exported = exported;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  String? _deliveryNoteNumber;
  String? get deliveryNoteNumber => _$this._deliveryNoteNumber;
  set deliveryNoteNumber(String? deliveryNoteNumber) =>
      _$this._deliveryNoteNumber = deliveryNoteNumber;

  CompanyBuilder? _customer;
  CompanyBuilder get customer => _$this._customer ??= CompanyBuilder();
  set customer(CompanyBuilder? customer) => _$this._customer = customer;

  CompanyBuilder? _carrier;
  CompanyBuilder get carrier => _$this._carrier ??= CompanyBuilder();
  set carrier(CompanyBuilder? carrier) => _$this._carrier = carrier;

  CompanyBuilder? _supplier;
  CompanyBuilder get supplier => _$this._supplier ??= CompanyBuilder();
  set supplier(CompanyBuilder? supplier) => _$this._supplier = supplier;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  UserBuilder? _ownerUser;
  UserBuilder get ownerUser => _$this._ownerUser ??= UserBuilder();
  set ownerUser(UserBuilder? ownerUser) => _$this._ownerUser = ownerUser;

  ListBuilder<DeliveryNoteItem>? _deliveryNoteItems;
  ListBuilder<DeliveryNoteItem> get deliveryNoteItems =>
      _$this._deliveryNoteItems ??= ListBuilder<DeliveryNoteItem>();
  set deliveryNoteItems(ListBuilder<DeliveryNoteItem>? deliveryNoteItems) =>
      _$this._deliveryNoteItems = deliveryNoteItems;

  ListBuilder<DeliveryNotePhoto>? _deliveryNotePhotos;
  ListBuilder<DeliveryNotePhoto> get deliveryNotePhotos =>
      _$this._deliveryNotePhotos ??= ListBuilder<DeliveryNotePhoto>();
  set deliveryNotePhotos(ListBuilder<DeliveryNotePhoto>? deliveryNotePhotos) =>
      _$this._deliveryNotePhotos = deliveryNotePhotos;

  DeliveryNoteBuilder() {
    DeliveryNote._defaults(this);
  }

  DeliveryNoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _licensePlate = $v.licensePlate;
      _dateOfDeparture = $v.dateOfDeparture;
      _reportNumber = $v.reportNumber;
      _ownerGroupGuid = $v.ownerGroupGuid;
      _ownerUserGuid = $v.ownerUserGuid;
      _customerId = $v.customerId;
      _carrierId = $v.carrierId;
      _supplierId = $v.supplierId;
      _exported = $v.exported;
      _locked = $v.locked;
      _deliveryNoteNumber = $v.deliveryNoteNumber;
      _customer = $v.customer?.toBuilder();
      _carrier = $v.carrier?.toBuilder();
      _supplier = $v.supplier?.toBuilder();
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _ownerUser = $v.ownerUser?.toBuilder();
      _deliveryNoteItems = $v.deliveryNoteItems?.toBuilder();
      _deliveryNotePhotos = $v.deliveryNotePhotos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryNote other) {
    _$v = other as _$DeliveryNote;
  }

  @override
  void update(void Function(DeliveryNoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryNote build() => _build();

  _$DeliveryNote _build() {
    _$DeliveryNote _$result;
    try {
      _$result = _$v ??
          _$DeliveryNote._(
            id: id,
            createdAt: createdAt,
            licensePlate: licensePlate,
            dateOfDeparture: dateOfDeparture,
            reportNumber: reportNumber,
            ownerGroupGuid: ownerGroupGuid,
            ownerUserGuid: ownerUserGuid,
            customerId: customerId,
            carrierId: carrierId,
            supplierId: supplierId,
            exported: exported,
            locked: locked,
            deliveryNoteNumber: deliveryNoteNumber,
            customer: _customer?.build(),
            carrier: _carrier?.build(),
            supplier: _supplier?.build(),
            ownerGroup: _ownerGroup?.build(),
            ownerUser: _ownerUser?.build(),
            deliveryNoteItems: _deliveryNoteItems?.build(),
            deliveryNotePhotos: _deliveryNotePhotos?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();
        _$failedField = 'carrier';
        _carrier?.build();
        _$failedField = 'supplier';
        _supplier?.build();
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();
        _$failedField = 'ownerUser';
        _ownerUser?.build();
        _$failedField = 'deliveryNoteItems';
        _deliveryNoteItems?.build();
        _$failedField = 'deliveryNotePhotos';
        _deliveryNotePhotos?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryNote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
