// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_admin_stats_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuperAdminStatsDTO extends SuperAdminStatsDTO {
  @override
  final int? confirmedUsers;
  @override
  final int? activeLicenses;
  @override
  final int? activeMonthLicenses;
  @override
  final int? activeYearLicenses;
  @override
  final BuiltMap<String, Int32SuperAdminStatsYear>? paidLicensePayments;
  @override
  final BuiltMap<String, Int32SuperAdminStatsYear>?
      canceledOrTimeoutedLicensePayments;
  @override
  final BuiltMap<String, Int32SuperAdminStatsYear>? invoicesForPayments;
  @override
  final BuiltMap<String, DecimalSuperAdminStatsYear>? moneyEarned;

  factory _$SuperAdminStatsDTO(
          [void Function(SuperAdminStatsDTOBuilder)? updates]) =>
      (SuperAdminStatsDTOBuilder()..update(updates))._build();

  _$SuperAdminStatsDTO._(
      {this.confirmedUsers,
      this.activeLicenses,
      this.activeMonthLicenses,
      this.activeYearLicenses,
      this.paidLicensePayments,
      this.canceledOrTimeoutedLicensePayments,
      this.invoicesForPayments,
      this.moneyEarned})
      : super._();
  @override
  SuperAdminStatsDTO rebuild(
          void Function(SuperAdminStatsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuperAdminStatsDTOBuilder toBuilder() =>
      SuperAdminStatsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuperAdminStatsDTO &&
        confirmedUsers == other.confirmedUsers &&
        activeLicenses == other.activeLicenses &&
        activeMonthLicenses == other.activeMonthLicenses &&
        activeYearLicenses == other.activeYearLicenses &&
        paidLicensePayments == other.paidLicensePayments &&
        canceledOrTimeoutedLicensePayments ==
            other.canceledOrTimeoutedLicensePayments &&
        invoicesForPayments == other.invoicesForPayments &&
        moneyEarned == other.moneyEarned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmedUsers.hashCode);
    _$hash = $jc(_$hash, activeLicenses.hashCode);
    _$hash = $jc(_$hash, activeMonthLicenses.hashCode);
    _$hash = $jc(_$hash, activeYearLicenses.hashCode);
    _$hash = $jc(_$hash, paidLicensePayments.hashCode);
    _$hash = $jc(_$hash, canceledOrTimeoutedLicensePayments.hashCode);
    _$hash = $jc(_$hash, invoicesForPayments.hashCode);
    _$hash = $jc(_$hash, moneyEarned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuperAdminStatsDTO')
          ..add('confirmedUsers', confirmedUsers)
          ..add('activeLicenses', activeLicenses)
          ..add('activeMonthLicenses', activeMonthLicenses)
          ..add('activeYearLicenses', activeYearLicenses)
          ..add('paidLicensePayments', paidLicensePayments)
          ..add('canceledOrTimeoutedLicensePayments',
              canceledOrTimeoutedLicensePayments)
          ..add('invoicesForPayments', invoicesForPayments)
          ..add('moneyEarned', moneyEarned))
        .toString();
  }
}

class SuperAdminStatsDTOBuilder
    implements Builder<SuperAdminStatsDTO, SuperAdminStatsDTOBuilder> {
  _$SuperAdminStatsDTO? _$v;

  int? _confirmedUsers;
  int? get confirmedUsers => _$this._confirmedUsers;
  set confirmedUsers(int? confirmedUsers) =>
      _$this._confirmedUsers = confirmedUsers;

  int? _activeLicenses;
  int? get activeLicenses => _$this._activeLicenses;
  set activeLicenses(int? activeLicenses) =>
      _$this._activeLicenses = activeLicenses;

  int? _activeMonthLicenses;
  int? get activeMonthLicenses => _$this._activeMonthLicenses;
  set activeMonthLicenses(int? activeMonthLicenses) =>
      _$this._activeMonthLicenses = activeMonthLicenses;

  int? _activeYearLicenses;
  int? get activeYearLicenses => _$this._activeYearLicenses;
  set activeYearLicenses(int? activeYearLicenses) =>
      _$this._activeYearLicenses = activeYearLicenses;

  MapBuilder<String, Int32SuperAdminStatsYear>? _paidLicensePayments;
  MapBuilder<String, Int32SuperAdminStatsYear> get paidLicensePayments =>
      _$this._paidLicensePayments ??=
          MapBuilder<String, Int32SuperAdminStatsYear>();
  set paidLicensePayments(
          MapBuilder<String, Int32SuperAdminStatsYear>? paidLicensePayments) =>
      _$this._paidLicensePayments = paidLicensePayments;

  MapBuilder<String, Int32SuperAdminStatsYear>?
      _canceledOrTimeoutedLicensePayments;
  MapBuilder<String, Int32SuperAdminStatsYear>
      get canceledOrTimeoutedLicensePayments =>
          _$this._canceledOrTimeoutedLicensePayments ??=
              MapBuilder<String, Int32SuperAdminStatsYear>();
  set canceledOrTimeoutedLicensePayments(
          MapBuilder<String, Int32SuperAdminStatsYear>?
              canceledOrTimeoutedLicensePayments) =>
      _$this._canceledOrTimeoutedLicensePayments =
          canceledOrTimeoutedLicensePayments;

  MapBuilder<String, Int32SuperAdminStatsYear>? _invoicesForPayments;
  MapBuilder<String, Int32SuperAdminStatsYear> get invoicesForPayments =>
      _$this._invoicesForPayments ??=
          MapBuilder<String, Int32SuperAdminStatsYear>();
  set invoicesForPayments(
          MapBuilder<String, Int32SuperAdminStatsYear>? invoicesForPayments) =>
      _$this._invoicesForPayments = invoicesForPayments;

  MapBuilder<String, DecimalSuperAdminStatsYear>? _moneyEarned;
  MapBuilder<String, DecimalSuperAdminStatsYear> get moneyEarned =>
      _$this._moneyEarned ??= MapBuilder<String, DecimalSuperAdminStatsYear>();
  set moneyEarned(
          MapBuilder<String, DecimalSuperAdminStatsYear>? moneyEarned) =>
      _$this._moneyEarned = moneyEarned;

  SuperAdminStatsDTOBuilder() {
    SuperAdminStatsDTO._defaults(this);
  }

  SuperAdminStatsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmedUsers = $v.confirmedUsers;
      _activeLicenses = $v.activeLicenses;
      _activeMonthLicenses = $v.activeMonthLicenses;
      _activeYearLicenses = $v.activeYearLicenses;
      _paidLicensePayments = $v.paidLicensePayments?.toBuilder();
      _canceledOrTimeoutedLicensePayments =
          $v.canceledOrTimeoutedLicensePayments?.toBuilder();
      _invoicesForPayments = $v.invoicesForPayments?.toBuilder();
      _moneyEarned = $v.moneyEarned?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuperAdminStatsDTO other) {
    _$v = other as _$SuperAdminStatsDTO;
  }

  @override
  void update(void Function(SuperAdminStatsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuperAdminStatsDTO build() => _build();

  _$SuperAdminStatsDTO _build() {
    _$SuperAdminStatsDTO _$result;
    try {
      _$result = _$v ??
          _$SuperAdminStatsDTO._(
            confirmedUsers: confirmedUsers,
            activeLicenses: activeLicenses,
            activeMonthLicenses: activeMonthLicenses,
            activeYearLicenses: activeYearLicenses,
            paidLicensePayments: _paidLicensePayments?.build(),
            canceledOrTimeoutedLicensePayments:
                _canceledOrTimeoutedLicensePayments?.build(),
            invoicesForPayments: _invoicesForPayments?.build(),
            moneyEarned: _moneyEarned?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paidLicensePayments';
        _paidLicensePayments?.build();
        _$failedField = 'canceledOrTimeoutedLicensePayments';
        _canceledOrTimeoutedLicensePayments?.build();
        _$failedField = 'invoicesForPayments';
        _invoicesForPayments?.build();
        _$failedField = 'moneyEarned';
        _moneyEarned?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SuperAdminStatsDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
