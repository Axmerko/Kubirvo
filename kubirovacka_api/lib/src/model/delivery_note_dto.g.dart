// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryNoteDTO extends DeliveryNoteDTO {
  @override
  final String? docNumber;
  @override
  final CompanyDTO? supplier;
  @override
  final CompanyDTO? customer;
  @override
  final DateTime? dateOfIssue;
  @override
  final DateTime? dateOfDelivery;
  @override
  final String? bankAccount;
  @override
  final int? variableSymbol;
  @override
  final String? order;
  @override
  final String? worker;
  @override
  final String? shippingAndDelivery;
  @override
  final String? condition;
  @override
  final String? note;
  @override
  final double? priceSubtotal;
  @override
  final double? priceTax;
  @override
  final double? priceShipping;
  @override
  final double? priceTotal;
  @override
  final double? totalVolume;
  @override
  final String? otherCustomer;
  @override
  final String? otherCustomerName;
  @override
  final DateTime? otherCustomerDate;
  @override
  final String? otherCustomerTime;
  @override
  final String? otherSupplier;
  @override
  final String? otherSupplierContact;
  @override
  final String? otherSupplierEmail;
  @override
  final String? otherSupplierPhone;
  @override
  final BuiltList<String>? woodLogsIds;
  @override
  final BuiltList<WoodLogReportDTO>? woodLogs;
  @override
  final double? m3PerLog;

  factory _$DeliveryNoteDTO([void Function(DeliveryNoteDTOBuilder)? updates]) =>
      (DeliveryNoteDTOBuilder()..update(updates))._build();

  _$DeliveryNoteDTO._(
      {this.docNumber,
      this.supplier,
      this.customer,
      this.dateOfIssue,
      this.dateOfDelivery,
      this.bankAccount,
      this.variableSymbol,
      this.order,
      this.worker,
      this.shippingAndDelivery,
      this.condition,
      this.note,
      this.priceSubtotal,
      this.priceTax,
      this.priceShipping,
      this.priceTotal,
      this.totalVolume,
      this.otherCustomer,
      this.otherCustomerName,
      this.otherCustomerDate,
      this.otherCustomerTime,
      this.otherSupplier,
      this.otherSupplierContact,
      this.otherSupplierEmail,
      this.otherSupplierPhone,
      this.woodLogsIds,
      this.woodLogs,
      this.m3PerLog})
      : super._();
  @override
  DeliveryNoteDTO rebuild(void Function(DeliveryNoteDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryNoteDTOBuilder toBuilder() => DeliveryNoteDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryNoteDTO &&
        docNumber == other.docNumber &&
        supplier == other.supplier &&
        customer == other.customer &&
        dateOfIssue == other.dateOfIssue &&
        dateOfDelivery == other.dateOfDelivery &&
        bankAccount == other.bankAccount &&
        variableSymbol == other.variableSymbol &&
        order == other.order &&
        worker == other.worker &&
        shippingAndDelivery == other.shippingAndDelivery &&
        condition == other.condition &&
        note == other.note &&
        priceSubtotal == other.priceSubtotal &&
        priceTax == other.priceTax &&
        priceShipping == other.priceShipping &&
        priceTotal == other.priceTotal &&
        totalVolume == other.totalVolume &&
        otherCustomer == other.otherCustomer &&
        otherCustomerName == other.otherCustomerName &&
        otherCustomerDate == other.otherCustomerDate &&
        otherCustomerTime == other.otherCustomerTime &&
        otherSupplier == other.otherSupplier &&
        otherSupplierContact == other.otherSupplierContact &&
        otherSupplierEmail == other.otherSupplierEmail &&
        otherSupplierPhone == other.otherSupplierPhone &&
        woodLogsIds == other.woodLogsIds &&
        woodLogs == other.woodLogs &&
        m3PerLog == other.m3PerLog;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, docNumber.hashCode);
    _$hash = $jc(_$hash, supplier.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, dateOfIssue.hashCode);
    _$hash = $jc(_$hash, dateOfDelivery.hashCode);
    _$hash = $jc(_$hash, bankAccount.hashCode);
    _$hash = $jc(_$hash, variableSymbol.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, worker.hashCode);
    _$hash = $jc(_$hash, shippingAndDelivery.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, priceSubtotal.hashCode);
    _$hash = $jc(_$hash, priceTax.hashCode);
    _$hash = $jc(_$hash, priceShipping.hashCode);
    _$hash = $jc(_$hash, priceTotal.hashCode);
    _$hash = $jc(_$hash, totalVolume.hashCode);
    _$hash = $jc(_$hash, otherCustomer.hashCode);
    _$hash = $jc(_$hash, otherCustomerName.hashCode);
    _$hash = $jc(_$hash, otherCustomerDate.hashCode);
    _$hash = $jc(_$hash, otherCustomerTime.hashCode);
    _$hash = $jc(_$hash, otherSupplier.hashCode);
    _$hash = $jc(_$hash, otherSupplierContact.hashCode);
    _$hash = $jc(_$hash, otherSupplierEmail.hashCode);
    _$hash = $jc(_$hash, otherSupplierPhone.hashCode);
    _$hash = $jc(_$hash, woodLogsIds.hashCode);
    _$hash = $jc(_$hash, woodLogs.hashCode);
    _$hash = $jc(_$hash, m3PerLog.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryNoteDTO')
          ..add('docNumber', docNumber)
          ..add('supplier', supplier)
          ..add('customer', customer)
          ..add('dateOfIssue', dateOfIssue)
          ..add('dateOfDelivery', dateOfDelivery)
          ..add('bankAccount', bankAccount)
          ..add('variableSymbol', variableSymbol)
          ..add('order', order)
          ..add('worker', worker)
          ..add('shippingAndDelivery', shippingAndDelivery)
          ..add('condition', condition)
          ..add('note', note)
          ..add('priceSubtotal', priceSubtotal)
          ..add('priceTax', priceTax)
          ..add('priceShipping', priceShipping)
          ..add('priceTotal', priceTotal)
          ..add('totalVolume', totalVolume)
          ..add('otherCustomer', otherCustomer)
          ..add('otherCustomerName', otherCustomerName)
          ..add('otherCustomerDate', otherCustomerDate)
          ..add('otherCustomerTime', otherCustomerTime)
          ..add('otherSupplier', otherSupplier)
          ..add('otherSupplierContact', otherSupplierContact)
          ..add('otherSupplierEmail', otherSupplierEmail)
          ..add('otherSupplierPhone', otherSupplierPhone)
          ..add('woodLogsIds', woodLogsIds)
          ..add('woodLogs', woodLogs)
          ..add('m3PerLog', m3PerLog))
        .toString();
  }
}

class DeliveryNoteDTOBuilder
    implements Builder<DeliveryNoteDTO, DeliveryNoteDTOBuilder> {
  _$DeliveryNoteDTO? _$v;

  String? _docNumber;
  String? get docNumber => _$this._docNumber;
  set docNumber(String? docNumber) => _$this._docNumber = docNumber;

  CompanyDTOBuilder? _supplier;
  CompanyDTOBuilder get supplier => _$this._supplier ??= CompanyDTOBuilder();
  set supplier(CompanyDTOBuilder? supplier) => _$this._supplier = supplier;

  CompanyDTOBuilder? _customer;
  CompanyDTOBuilder get customer => _$this._customer ??= CompanyDTOBuilder();
  set customer(CompanyDTOBuilder? customer) => _$this._customer = customer;

  DateTime? _dateOfIssue;
  DateTime? get dateOfIssue => _$this._dateOfIssue;
  set dateOfIssue(DateTime? dateOfIssue) => _$this._dateOfIssue = dateOfIssue;

  DateTime? _dateOfDelivery;
  DateTime? get dateOfDelivery => _$this._dateOfDelivery;
  set dateOfDelivery(DateTime? dateOfDelivery) =>
      _$this._dateOfDelivery = dateOfDelivery;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  int? _variableSymbol;
  int? get variableSymbol => _$this._variableSymbol;
  set variableSymbol(int? variableSymbol) =>
      _$this._variableSymbol = variableSymbol;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  String? _worker;
  String? get worker => _$this._worker;
  set worker(String? worker) => _$this._worker = worker;

  String? _shippingAndDelivery;
  String? get shippingAndDelivery => _$this._shippingAndDelivery;
  set shippingAndDelivery(String? shippingAndDelivery) =>
      _$this._shippingAndDelivery = shippingAndDelivery;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  double? _priceSubtotal;
  double? get priceSubtotal => _$this._priceSubtotal;
  set priceSubtotal(double? priceSubtotal) =>
      _$this._priceSubtotal = priceSubtotal;

  double? _priceTax;
  double? get priceTax => _$this._priceTax;
  set priceTax(double? priceTax) => _$this._priceTax = priceTax;

  double? _priceShipping;
  double? get priceShipping => _$this._priceShipping;
  set priceShipping(double? priceShipping) =>
      _$this._priceShipping = priceShipping;

  double? _priceTotal;
  double? get priceTotal => _$this._priceTotal;
  set priceTotal(double? priceTotal) => _$this._priceTotal = priceTotal;

  double? _totalVolume;
  double? get totalVolume => _$this._totalVolume;
  set totalVolume(double? totalVolume) => _$this._totalVolume = totalVolume;

  String? _otherCustomer;
  String? get otherCustomer => _$this._otherCustomer;
  set otherCustomer(String? otherCustomer) =>
      _$this._otherCustomer = otherCustomer;

  String? _otherCustomerName;
  String? get otherCustomerName => _$this._otherCustomerName;
  set otherCustomerName(String? otherCustomerName) =>
      _$this._otherCustomerName = otherCustomerName;

  DateTime? _otherCustomerDate;
  DateTime? get otherCustomerDate => _$this._otherCustomerDate;
  set otherCustomerDate(DateTime? otherCustomerDate) =>
      _$this._otherCustomerDate = otherCustomerDate;

  String? _otherCustomerTime;
  String? get otherCustomerTime => _$this._otherCustomerTime;
  set otherCustomerTime(String? otherCustomerTime) =>
      _$this._otherCustomerTime = otherCustomerTime;

  String? _otherSupplier;
  String? get otherSupplier => _$this._otherSupplier;
  set otherSupplier(String? otherSupplier) =>
      _$this._otherSupplier = otherSupplier;

  String? _otherSupplierContact;
  String? get otherSupplierContact => _$this._otherSupplierContact;
  set otherSupplierContact(String? otherSupplierContact) =>
      _$this._otherSupplierContact = otherSupplierContact;

  String? _otherSupplierEmail;
  String? get otherSupplierEmail => _$this._otherSupplierEmail;
  set otherSupplierEmail(String? otherSupplierEmail) =>
      _$this._otherSupplierEmail = otherSupplierEmail;

  String? _otherSupplierPhone;
  String? get otherSupplierPhone => _$this._otherSupplierPhone;
  set otherSupplierPhone(String? otherSupplierPhone) =>
      _$this._otherSupplierPhone = otherSupplierPhone;

  ListBuilder<String>? _woodLogsIds;
  ListBuilder<String> get woodLogsIds =>
      _$this._woodLogsIds ??= ListBuilder<String>();
  set woodLogsIds(ListBuilder<String>? woodLogsIds) =>
      _$this._woodLogsIds = woodLogsIds;

  ListBuilder<WoodLogReportDTO>? _woodLogs;
  ListBuilder<WoodLogReportDTO> get woodLogs =>
      _$this._woodLogs ??= ListBuilder<WoodLogReportDTO>();
  set woodLogs(ListBuilder<WoodLogReportDTO>? woodLogs) =>
      _$this._woodLogs = woodLogs;

  double? _m3PerLog;
  double? get m3PerLog => _$this._m3PerLog;
  set m3PerLog(double? m3PerLog) => _$this._m3PerLog = m3PerLog;

  DeliveryNoteDTOBuilder() {
    DeliveryNoteDTO._defaults(this);
  }

  DeliveryNoteDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _docNumber = $v.docNumber;
      _supplier = $v.supplier?.toBuilder();
      _customer = $v.customer?.toBuilder();
      _dateOfIssue = $v.dateOfIssue;
      _dateOfDelivery = $v.dateOfDelivery;
      _bankAccount = $v.bankAccount;
      _variableSymbol = $v.variableSymbol;
      _order = $v.order;
      _worker = $v.worker;
      _shippingAndDelivery = $v.shippingAndDelivery;
      _condition = $v.condition;
      _note = $v.note;
      _priceSubtotal = $v.priceSubtotal;
      _priceTax = $v.priceTax;
      _priceShipping = $v.priceShipping;
      _priceTotal = $v.priceTotal;
      _totalVolume = $v.totalVolume;
      _otherCustomer = $v.otherCustomer;
      _otherCustomerName = $v.otherCustomerName;
      _otherCustomerDate = $v.otherCustomerDate;
      _otherCustomerTime = $v.otherCustomerTime;
      _otherSupplier = $v.otherSupplier;
      _otherSupplierContact = $v.otherSupplierContact;
      _otherSupplierEmail = $v.otherSupplierEmail;
      _otherSupplierPhone = $v.otherSupplierPhone;
      _woodLogsIds = $v.woodLogsIds?.toBuilder();
      _woodLogs = $v.woodLogs?.toBuilder();
      _m3PerLog = $v.m3PerLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryNoteDTO other) {
    _$v = other as _$DeliveryNoteDTO;
  }

  @override
  void update(void Function(DeliveryNoteDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryNoteDTO build() => _build();

  _$DeliveryNoteDTO _build() {
    _$DeliveryNoteDTO _$result;
    try {
      _$result = _$v ??
          _$DeliveryNoteDTO._(
            docNumber: docNumber,
            supplier: _supplier?.build(),
            customer: _customer?.build(),
            dateOfIssue: dateOfIssue,
            dateOfDelivery: dateOfDelivery,
            bankAccount: bankAccount,
            variableSymbol: variableSymbol,
            order: order,
            worker: worker,
            shippingAndDelivery: shippingAndDelivery,
            condition: condition,
            note: note,
            priceSubtotal: priceSubtotal,
            priceTax: priceTax,
            priceShipping: priceShipping,
            priceTotal: priceTotal,
            totalVolume: totalVolume,
            otherCustomer: otherCustomer,
            otherCustomerName: otherCustomerName,
            otherCustomerDate: otherCustomerDate,
            otherCustomerTime: otherCustomerTime,
            otherSupplier: otherSupplier,
            otherSupplierContact: otherSupplierContact,
            otherSupplierEmail: otherSupplierEmail,
            otherSupplierPhone: otherSupplierPhone,
            woodLogsIds: _woodLogsIds?.build(),
            woodLogs: _woodLogs?.build(),
            m3PerLog: m3PerLog,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supplier';
        _supplier?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'woodLogsIds';
        _woodLogsIds?.build();
        _$failedField = 'woodLogs';
        _woodLogs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryNoteDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
