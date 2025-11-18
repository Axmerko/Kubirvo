// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Group extends Group {
  @override
  final String name;
  @override
  final GroupType groupType;
  @override
  final String? id;
  @override
  final String? parentId;
  @override
  final Group? parent;
  @override
  final bool? isAdvertiser;
  @override
  final int? adCredit;
  @override
  final BuiltList<UserGroup>? userGroups;
  @override
  final BuiltList<WoodLogList>? logsLists;
  @override
  final BuiltList<DeliveryNote>? deliveryNotes;
  @override
  final BuiltList<License>? licensesOwned;
  @override
  final BuiltList<Ad>? adsOwned;
  @override
  final BuiltList<WoodLogListStatus>? logListStatuses;

  factory _$Group([void Function(GroupBuilder)? updates]) =>
      (GroupBuilder()..update(updates))._build();

  _$Group._(
      {required this.name,
      required this.groupType,
      this.id,
      this.parentId,
      this.parent,
      this.isAdvertiser,
      this.adCredit,
      this.userGroups,
      this.logsLists,
      this.deliveryNotes,
      this.licensesOwned,
      this.adsOwned,
      this.logListStatuses})
      : super._();
  @override
  Group rebuild(void Function(GroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        name == other.name &&
        groupType == other.groupType &&
        id == other.id &&
        parentId == other.parentId &&
        parent == other.parent &&
        isAdvertiser == other.isAdvertiser &&
        adCredit == other.adCredit &&
        userGroups == other.userGroups &&
        logsLists == other.logsLists &&
        deliveryNotes == other.deliveryNotes &&
        licensesOwned == other.licensesOwned &&
        adsOwned == other.adsOwned &&
        logListStatuses == other.logListStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, isAdvertiser.hashCode);
    _$hash = $jc(_$hash, adCredit.hashCode);
    _$hash = $jc(_$hash, userGroups.hashCode);
    _$hash = $jc(_$hash, logsLists.hashCode);
    _$hash = $jc(_$hash, deliveryNotes.hashCode);
    _$hash = $jc(_$hash, licensesOwned.hashCode);
    _$hash = $jc(_$hash, adsOwned.hashCode);
    _$hash = $jc(_$hash, logListStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Group')
          ..add('name', name)
          ..add('groupType', groupType)
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('parent', parent)
          ..add('isAdvertiser', isAdvertiser)
          ..add('adCredit', adCredit)
          ..add('userGroups', userGroups)
          ..add('logsLists', logsLists)
          ..add('deliveryNotes', deliveryNotes)
          ..add('licensesOwned', licensesOwned)
          ..add('adsOwned', adsOwned)
          ..add('logListStatuses', logListStatuses))
        .toString();
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GroupType? _groupType;
  GroupType? get groupType => _$this._groupType;
  set groupType(GroupType? groupType) => _$this._groupType = groupType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  GroupBuilder? _parent;
  GroupBuilder get parent => _$this._parent ??= GroupBuilder();
  set parent(GroupBuilder? parent) => _$this._parent = parent;

  bool? _isAdvertiser;
  bool? get isAdvertiser => _$this._isAdvertiser;
  set isAdvertiser(bool? isAdvertiser) => _$this._isAdvertiser = isAdvertiser;

  int? _adCredit;
  int? get adCredit => _$this._adCredit;
  set adCredit(int? adCredit) => _$this._adCredit = adCredit;

  ListBuilder<UserGroup>? _userGroups;
  ListBuilder<UserGroup> get userGroups =>
      _$this._userGroups ??= ListBuilder<UserGroup>();
  set userGroups(ListBuilder<UserGroup>? userGroups) =>
      _$this._userGroups = userGroups;

  ListBuilder<WoodLogList>? _logsLists;
  ListBuilder<WoodLogList> get logsLists =>
      _$this._logsLists ??= ListBuilder<WoodLogList>();
  set logsLists(ListBuilder<WoodLogList>? logsLists) =>
      _$this._logsLists = logsLists;

  ListBuilder<DeliveryNote>? _deliveryNotes;
  ListBuilder<DeliveryNote> get deliveryNotes =>
      _$this._deliveryNotes ??= ListBuilder<DeliveryNote>();
  set deliveryNotes(ListBuilder<DeliveryNote>? deliveryNotes) =>
      _$this._deliveryNotes = deliveryNotes;

  ListBuilder<License>? _licensesOwned;
  ListBuilder<License> get licensesOwned =>
      _$this._licensesOwned ??= ListBuilder<License>();
  set licensesOwned(ListBuilder<License>? licensesOwned) =>
      _$this._licensesOwned = licensesOwned;

  ListBuilder<Ad>? _adsOwned;
  ListBuilder<Ad> get adsOwned => _$this._adsOwned ??= ListBuilder<Ad>();
  set adsOwned(ListBuilder<Ad>? adsOwned) => _$this._adsOwned = adsOwned;

  ListBuilder<WoodLogListStatus>? _logListStatuses;
  ListBuilder<WoodLogListStatus> get logListStatuses =>
      _$this._logListStatuses ??= ListBuilder<WoodLogListStatus>();
  set logListStatuses(ListBuilder<WoodLogListStatus>? logListStatuses) =>
      _$this._logListStatuses = logListStatuses;

  GroupBuilder() {
    Group._defaults(this);
  }

  GroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _groupType = $v.groupType;
      _id = $v.id;
      _parentId = $v.parentId;
      _parent = $v.parent?.toBuilder();
      _isAdvertiser = $v.isAdvertiser;
      _adCredit = $v.adCredit;
      _userGroups = $v.userGroups?.toBuilder();
      _logsLists = $v.logsLists?.toBuilder();
      _deliveryNotes = $v.deliveryNotes?.toBuilder();
      _licensesOwned = $v.licensesOwned?.toBuilder();
      _adsOwned = $v.adsOwned?.toBuilder();
      _logListStatuses = $v.logListStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    _$v = other as _$Group;
  }

  @override
  void update(void Function(GroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Group build() => _build();

  _$Group _build() {
    _$Group _$result;
    try {
      _$result = _$v ??
          _$Group._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Group', 'name'),
            groupType: BuiltValueNullFieldError.checkNotNull(
                groupType, r'Group', 'groupType'),
            id: id,
            parentId: parentId,
            parent: _parent?.build(),
            isAdvertiser: isAdvertiser,
            adCredit: adCredit,
            userGroups: _userGroups?.build(),
            logsLists: _logsLists?.build(),
            deliveryNotes: _deliveryNotes?.build(),
            licensesOwned: _licensesOwned?.build(),
            adsOwned: _adsOwned?.build(),
            logListStatuses: _logListStatuses?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();

        _$failedField = 'userGroups';
        _userGroups?.build();
        _$failedField = 'logsLists';
        _logsLists?.build();
        _$failedField = 'deliveryNotes';
        _deliveryNotes?.build();
        _$failedField = 'licensesOwned';
        _licensesOwned?.build();
        _$failedField = 'adsOwned';
        _adsOwned?.build();
        _$failedField = 'logListStatuses';
        _logListStatuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Group', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
