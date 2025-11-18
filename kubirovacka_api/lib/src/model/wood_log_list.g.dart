// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogList extends WoodLogList {
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime uploadedAt;
  @override
  final DateTime updatedAt;
  @override
  final String creatorId;
  @override
  final RewardType rewardType;
  @override
  final int rewardInCents;
  @override
  final String ownerGroupId;
  @override
  final bool editedFromWeb;
  @override
  final bool isSnapshot;
  @override
  final int statusId;
  @override
  final String? id;
  @override
  final String? editedBy;
  @override
  final String? woodLogListSendId;
  @override
  final String? copiedFromId;
  @override
  final Group? ownerGroup;
  @override
  final User? creator;
  @override
  final BuiltList<WoodLog>? logs;
  @override
  final WoodLogListSend? woodLogListSend;
  @override
  final WoodLogList? copiedFrom;
  @override
  final int? version;
  @override
  final WoodLogListStatus? status;
  @override
  final BuiltList<WoodLogList>? copies;

  factory _$WoodLogList([void Function(WoodLogListBuilder)? updates]) =>
      (WoodLogListBuilder()..update(updates))._build();

  _$WoodLogList._(
      {required this.name,
      required this.createdAt,
      required this.uploadedAt,
      required this.updatedAt,
      required this.creatorId,
      required this.rewardType,
      required this.rewardInCents,
      required this.ownerGroupId,
      required this.editedFromWeb,
      required this.isSnapshot,
      required this.statusId,
      this.id,
      this.editedBy,
      this.woodLogListSendId,
      this.copiedFromId,
      this.ownerGroup,
      this.creator,
      this.logs,
      this.woodLogListSend,
      this.copiedFrom,
      this.version,
      this.status,
      this.copies})
      : super._();
  @override
  WoodLogList rebuild(void Function(WoodLogListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListBuilder toBuilder() => WoodLogListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogList &&
        name == other.name &&
        createdAt == other.createdAt &&
        uploadedAt == other.uploadedAt &&
        updatedAt == other.updatedAt &&
        creatorId == other.creatorId &&
        rewardType == other.rewardType &&
        rewardInCents == other.rewardInCents &&
        ownerGroupId == other.ownerGroupId &&
        editedFromWeb == other.editedFromWeb &&
        isSnapshot == other.isSnapshot &&
        statusId == other.statusId &&
        id == other.id &&
        editedBy == other.editedBy &&
        woodLogListSendId == other.woodLogListSendId &&
        copiedFromId == other.copiedFromId &&
        ownerGroup == other.ownerGroup &&
        creator == other.creator &&
        logs == other.logs &&
        woodLogListSend == other.woodLogListSend &&
        copiedFrom == other.copiedFrom &&
        version == other.version &&
        status == other.status &&
        copies == other.copies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, uploadedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, rewardType.hashCode);
    _$hash = $jc(_$hash, rewardInCents.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, editedFromWeb.hashCode);
    _$hash = $jc(_$hash, isSnapshot.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, editedBy.hashCode);
    _$hash = $jc(_$hash, woodLogListSendId.hashCode);
    _$hash = $jc(_$hash, copiedFromId.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, logs.hashCode);
    _$hash = $jc(_$hash, woodLogListSend.hashCode);
    _$hash = $jc(_$hash, copiedFrom.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, copies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogList')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('uploadedAt', uploadedAt)
          ..add('updatedAt', updatedAt)
          ..add('creatorId', creatorId)
          ..add('rewardType', rewardType)
          ..add('rewardInCents', rewardInCents)
          ..add('ownerGroupId', ownerGroupId)
          ..add('editedFromWeb', editedFromWeb)
          ..add('isSnapshot', isSnapshot)
          ..add('statusId', statusId)
          ..add('id', id)
          ..add('editedBy', editedBy)
          ..add('woodLogListSendId', woodLogListSendId)
          ..add('copiedFromId', copiedFromId)
          ..add('ownerGroup', ownerGroup)
          ..add('creator', creator)
          ..add('logs', logs)
          ..add('woodLogListSend', woodLogListSend)
          ..add('copiedFrom', copiedFrom)
          ..add('version', version)
          ..add('status', status)
          ..add('copies', copies))
        .toString();
  }
}

class WoodLogListBuilder implements Builder<WoodLogList, WoodLogListBuilder> {
  _$WoodLogList? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _uploadedAt;
  DateTime? get uploadedAt => _$this._uploadedAt;
  set uploadedAt(DateTime? uploadedAt) => _$this._uploadedAt = uploadedAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  RewardType? _rewardType;
  RewardType? get rewardType => _$this._rewardType;
  set rewardType(RewardType? rewardType) => _$this._rewardType = rewardType;

  int? _rewardInCents;
  int? get rewardInCents => _$this._rewardInCents;
  set rewardInCents(int? rewardInCents) =>
      _$this._rewardInCents = rewardInCents;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  bool? _editedFromWeb;
  bool? get editedFromWeb => _$this._editedFromWeb;
  set editedFromWeb(bool? editedFromWeb) =>
      _$this._editedFromWeb = editedFromWeb;

  bool? _isSnapshot;
  bool? get isSnapshot => _$this._isSnapshot;
  set isSnapshot(bool? isSnapshot) => _$this._isSnapshot = isSnapshot;

  int? _statusId;
  int? get statusId => _$this._statusId;
  set statusId(int? statusId) => _$this._statusId = statusId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _editedBy;
  String? get editedBy => _$this._editedBy;
  set editedBy(String? editedBy) => _$this._editedBy = editedBy;

  String? _woodLogListSendId;
  String? get woodLogListSendId => _$this._woodLogListSendId;
  set woodLogListSendId(String? woodLogListSendId) =>
      _$this._woodLogListSendId = woodLogListSendId;

  String? _copiedFromId;
  String? get copiedFromId => _$this._copiedFromId;
  set copiedFromId(String? copiedFromId) => _$this._copiedFromId = copiedFromId;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  UserBuilder? _creator;
  UserBuilder get creator => _$this._creator ??= UserBuilder();
  set creator(UserBuilder? creator) => _$this._creator = creator;

  ListBuilder<WoodLog>? _logs;
  ListBuilder<WoodLog> get logs => _$this._logs ??= ListBuilder<WoodLog>();
  set logs(ListBuilder<WoodLog>? logs) => _$this._logs = logs;

  WoodLogListSendBuilder? _woodLogListSend;
  WoodLogListSendBuilder get woodLogListSend =>
      _$this._woodLogListSend ??= WoodLogListSendBuilder();
  set woodLogListSend(WoodLogListSendBuilder? woodLogListSend) =>
      _$this._woodLogListSend = woodLogListSend;

  WoodLogListBuilder? _copiedFrom;
  WoodLogListBuilder get copiedFrom =>
      _$this._copiedFrom ??= WoodLogListBuilder();
  set copiedFrom(WoodLogListBuilder? copiedFrom) =>
      _$this._copiedFrom = copiedFrom;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  WoodLogListStatusBuilder? _status;
  WoodLogListStatusBuilder get status =>
      _$this._status ??= WoodLogListStatusBuilder();
  set status(WoodLogListStatusBuilder? status) => _$this._status = status;

  ListBuilder<WoodLogList>? _copies;
  ListBuilder<WoodLogList> get copies =>
      _$this._copies ??= ListBuilder<WoodLogList>();
  set copies(ListBuilder<WoodLogList>? copies) => _$this._copies = copies;

  WoodLogListBuilder() {
    WoodLogList._defaults(this);
  }

  WoodLogListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createdAt = $v.createdAt;
      _uploadedAt = $v.uploadedAt;
      _updatedAt = $v.updatedAt;
      _creatorId = $v.creatorId;
      _rewardType = $v.rewardType;
      _rewardInCents = $v.rewardInCents;
      _ownerGroupId = $v.ownerGroupId;
      _editedFromWeb = $v.editedFromWeb;
      _isSnapshot = $v.isSnapshot;
      _statusId = $v.statusId;
      _id = $v.id;
      _editedBy = $v.editedBy;
      _woodLogListSendId = $v.woodLogListSendId;
      _copiedFromId = $v.copiedFromId;
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _creator = $v.creator?.toBuilder();
      _logs = $v.logs?.toBuilder();
      _woodLogListSend = $v.woodLogListSend?.toBuilder();
      _copiedFrom = $v.copiedFrom?.toBuilder();
      _version = $v.version;
      _status = $v.status?.toBuilder();
      _copies = $v.copies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogList other) {
    _$v = other as _$WoodLogList;
  }

  @override
  void update(void Function(WoodLogListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogList build() => _build();

  _$WoodLogList _build() {
    _$WoodLogList _$result;
    try {
      _$result = _$v ??
          _$WoodLogList._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WoodLogList', 'name'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'WoodLogList', 'createdAt'),
            uploadedAt: BuiltValueNullFieldError.checkNotNull(
                uploadedAt, r'WoodLogList', 'uploadedAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'WoodLogList', 'updatedAt'),
            creatorId: BuiltValueNullFieldError.checkNotNull(
                creatorId, r'WoodLogList', 'creatorId'),
            rewardType: BuiltValueNullFieldError.checkNotNull(
                rewardType, r'WoodLogList', 'rewardType'),
            rewardInCents: BuiltValueNullFieldError.checkNotNull(
                rewardInCents, r'WoodLogList', 'rewardInCents'),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'WoodLogList', 'ownerGroupId'),
            editedFromWeb: BuiltValueNullFieldError.checkNotNull(
                editedFromWeb, r'WoodLogList', 'editedFromWeb'),
            isSnapshot: BuiltValueNullFieldError.checkNotNull(
                isSnapshot, r'WoodLogList', 'isSnapshot'),
            statusId: BuiltValueNullFieldError.checkNotNull(
                statusId, r'WoodLogList', 'statusId'),
            id: id,
            editedBy: editedBy,
            woodLogListSendId: woodLogListSendId,
            copiedFromId: copiedFromId,
            ownerGroup: _ownerGroup?.build(),
            creator: _creator?.build(),
            logs: _logs?.build(),
            woodLogListSend: _woodLogListSend?.build(),
            copiedFrom: _copiedFrom?.build(),
            version: version,
            status: _status?.build(),
            copies: _copies?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();
        _$failedField = 'creator';
        _creator?.build();
        _$failedField = 'logs';
        _logs?.build();
        _$failedField = 'woodLogListSend';
        _woodLogListSend?.build();
        _$failedField = 'copiedFrom';
        _copiedFrom?.build();

        _$failedField = 'status';
        _status?.build();
        _$failedField = 'copies';
        _copies?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
