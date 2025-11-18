// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListStatus extends WoodLogListStatus {
  @override
  final bool isGlobal;
  @override
  final WoodLogListStatusType statusType;
  @override
  final int? id;
  @override
  final String? customName;
  @override
  final String? ownerGroupId;
  @override
  final Group? ownerGroup;
  @override
  final BuiltList<WoodLogList>? lists;

  factory _$WoodLogListStatus(
          [void Function(WoodLogListStatusBuilder)? updates]) =>
      (WoodLogListStatusBuilder()..update(updates))._build();

  _$WoodLogListStatus._(
      {required this.isGlobal,
      required this.statusType,
      this.id,
      this.customName,
      this.ownerGroupId,
      this.ownerGroup,
      this.lists})
      : super._();
  @override
  WoodLogListStatus rebuild(void Function(WoodLogListStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListStatusBuilder toBuilder() =>
      WoodLogListStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListStatus &&
        isGlobal == other.isGlobal &&
        statusType == other.statusType &&
        id == other.id &&
        customName == other.customName &&
        ownerGroupId == other.ownerGroupId &&
        ownerGroup == other.ownerGroup &&
        lists == other.lists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jc(_$hash, statusType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customName.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, lists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListStatus')
          ..add('isGlobal', isGlobal)
          ..add('statusType', statusType)
          ..add('id', id)
          ..add('customName', customName)
          ..add('ownerGroupId', ownerGroupId)
          ..add('ownerGroup', ownerGroup)
          ..add('lists', lists))
        .toString();
  }
}

class WoodLogListStatusBuilder
    implements Builder<WoodLogListStatus, WoodLogListStatusBuilder> {
  _$WoodLogListStatus? _$v;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  WoodLogListStatusType? _statusType;
  WoodLogListStatusType? get statusType => _$this._statusType;
  set statusType(WoodLogListStatusType? statusType) =>
      _$this._statusType = statusType;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _customName;
  String? get customName => _$this._customName;
  set customName(String? customName) => _$this._customName = customName;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  ListBuilder<WoodLogList>? _lists;
  ListBuilder<WoodLogList> get lists =>
      _$this._lists ??= ListBuilder<WoodLogList>();
  set lists(ListBuilder<WoodLogList>? lists) => _$this._lists = lists;

  WoodLogListStatusBuilder() {
    WoodLogListStatus._defaults(this);
  }

  WoodLogListStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isGlobal = $v.isGlobal;
      _statusType = $v.statusType;
      _id = $v.id;
      _customName = $v.customName;
      _ownerGroupId = $v.ownerGroupId;
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _lists = $v.lists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListStatus other) {
    _$v = other as _$WoodLogListStatus;
  }

  @override
  void update(void Function(WoodLogListStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListStatus build() => _build();

  _$WoodLogListStatus _build() {
    _$WoodLogListStatus _$result;
    try {
      _$result = _$v ??
          _$WoodLogListStatus._(
            isGlobal: BuiltValueNullFieldError.checkNotNull(
                isGlobal, r'WoodLogListStatus', 'isGlobal'),
            statusType: BuiltValueNullFieldError.checkNotNull(
                statusType, r'WoodLogListStatus', 'statusType'),
            id: id,
            customName: customName,
            ownerGroupId: ownerGroupId,
            ownerGroup: _ownerGroup?.build(),
            lists: _lists?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();
        _$failedField = 'lists';
        _lists?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogListStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
