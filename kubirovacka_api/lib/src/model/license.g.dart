// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$License extends License {
  @override
  final DateTime createdAt;
  @override
  final String ownerGroupId;
  @override
  final DateTime startDate;
  @override
  final DateTime expirationDate;
  @override
  final BuiltList<JsonObject?> licenseScopes;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final User? user;
  @override
  final Group? ownerGroup;
  @override
  final LicenseProductType? lastPurchasePeriod;
  @override
  final DateTime? notifyExpirationAt;
  @override
  final String? mobileStoreSubscriptionState;

  factory _$License([void Function(LicenseBuilder)? updates]) =>
      (LicenseBuilder()..update(updates))._build();

  _$License._(
      {required this.createdAt,
      required this.ownerGroupId,
      required this.startDate,
      required this.expirationDate,
      required this.licenseScopes,
      this.id,
      this.userId,
      this.user,
      this.ownerGroup,
      this.lastPurchasePeriod,
      this.notifyExpirationAt,
      this.mobileStoreSubscriptionState})
      : super._();
  @override
  License rebuild(void Function(LicenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseBuilder toBuilder() => LicenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is License &&
        createdAt == other.createdAt &&
        ownerGroupId == other.ownerGroupId &&
        startDate == other.startDate &&
        expirationDate == other.expirationDate &&
        licenseScopes == other.licenseScopes &&
        id == other.id &&
        userId == other.userId &&
        user == other.user &&
        ownerGroup == other.ownerGroup &&
        lastPurchasePeriod == other.lastPurchasePeriod &&
        notifyExpirationAt == other.notifyExpirationAt &&
        mobileStoreSubscriptionState == other.mobileStoreSubscriptionState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, licenseScopes.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, lastPurchasePeriod.hashCode);
    _$hash = $jc(_$hash, notifyExpirationAt.hashCode);
    _$hash = $jc(_$hash, mobileStoreSubscriptionState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'License')
          ..add('createdAt', createdAt)
          ..add('ownerGroupId', ownerGroupId)
          ..add('startDate', startDate)
          ..add('expirationDate', expirationDate)
          ..add('licenseScopes', licenseScopes)
          ..add('id', id)
          ..add('userId', userId)
          ..add('user', user)
          ..add('ownerGroup', ownerGroup)
          ..add('lastPurchasePeriod', lastPurchasePeriod)
          ..add('notifyExpirationAt', notifyExpirationAt)
          ..add('mobileStoreSubscriptionState', mobileStoreSubscriptionState))
        .toString();
  }
}

class LicenseBuilder implements Builder<License, LicenseBuilder> {
  _$License? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _expirationDate;
  DateTime? get expirationDate => _$this._expirationDate;
  set expirationDate(DateTime? expirationDate) =>
      _$this._expirationDate = expirationDate;

  ListBuilder<JsonObject?>? _licenseScopes;
  ListBuilder<JsonObject?> get licenseScopes =>
      _$this._licenseScopes ??= ListBuilder<JsonObject?>();
  set licenseScopes(ListBuilder<JsonObject?>? licenseScopes) =>
      _$this._licenseScopes = licenseScopes;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  LicenseProductType? _lastPurchasePeriod;
  LicenseProductType? get lastPurchasePeriod => _$this._lastPurchasePeriod;
  set lastPurchasePeriod(LicenseProductType? lastPurchasePeriod) =>
      _$this._lastPurchasePeriod = lastPurchasePeriod;

  DateTime? _notifyExpirationAt;
  DateTime? get notifyExpirationAt => _$this._notifyExpirationAt;
  set notifyExpirationAt(DateTime? notifyExpirationAt) =>
      _$this._notifyExpirationAt = notifyExpirationAt;

  String? _mobileStoreSubscriptionState;
  String? get mobileStoreSubscriptionState =>
      _$this._mobileStoreSubscriptionState;
  set mobileStoreSubscriptionState(String? mobileStoreSubscriptionState) =>
      _$this._mobileStoreSubscriptionState = mobileStoreSubscriptionState;

  LicenseBuilder() {
    License._defaults(this);
  }

  LicenseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _ownerGroupId = $v.ownerGroupId;
      _startDate = $v.startDate;
      _expirationDate = $v.expirationDate;
      _licenseScopes = $v.licenseScopes.toBuilder();
      _id = $v.id;
      _userId = $v.userId;
      _user = $v.user?.toBuilder();
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _lastPurchasePeriod = $v.lastPurchasePeriod;
      _notifyExpirationAt = $v.notifyExpirationAt;
      _mobileStoreSubscriptionState = $v.mobileStoreSubscriptionState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(License other) {
    _$v = other as _$License;
  }

  @override
  void update(void Function(LicenseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  License build() => _build();

  _$License _build() {
    _$License _$result;
    try {
      _$result = _$v ??
          _$License._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'License', 'createdAt'),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'License', 'ownerGroupId'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'License', 'startDate'),
            expirationDate: BuiltValueNullFieldError.checkNotNull(
                expirationDate, r'License', 'expirationDate'),
            licenseScopes: licenseScopes.build(),
            id: id,
            userId: userId,
            user: _user?.build(),
            ownerGroup: _ownerGroup?.build(),
            lastPurchasePeriod: lastPurchasePeriod,
            notifyExpirationAt: notifyExpirationAt,
            mobileStoreSubscriptionState: mobileStoreSubscriptionState,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'licenseScopes';
        licenseScopes.build();

        _$failedField = 'user';
        _user?.build();
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'License', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
