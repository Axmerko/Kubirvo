// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_brief_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupBriefDTO extends GroupBriefDTO {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final GroupType? groupType;
  @override
  final String? parentId;

  factory _$GroupBriefDTO([void Function(GroupBriefDTOBuilder)? updates]) =>
      (GroupBriefDTOBuilder()..update(updates))._build();

  _$GroupBriefDTO._({this.id, this.name, this.groupType, this.parentId})
      : super._();
  @override
  GroupBriefDTO rebuild(void Function(GroupBriefDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBriefDTOBuilder toBuilder() => GroupBriefDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupBriefDTO &&
        id == other.id &&
        name == other.name &&
        groupType == other.groupType &&
        parentId == other.parentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupBriefDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('groupType', groupType)
          ..add('parentId', parentId))
        .toString();
  }
}

class GroupBriefDTOBuilder
    implements Builder<GroupBriefDTO, GroupBriefDTOBuilder> {
  _$GroupBriefDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GroupType? _groupType;
  GroupType? get groupType => _$this._groupType;
  set groupType(GroupType? groupType) => _$this._groupType = groupType;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  GroupBriefDTOBuilder() {
    GroupBriefDTO._defaults(this);
  }

  GroupBriefDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _groupType = $v.groupType;
      _parentId = $v.parentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupBriefDTO other) {
    _$v = other as _$GroupBriefDTO;
  }

  @override
  void update(void Function(GroupBriefDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupBriefDTO build() => _build();

  _$GroupBriefDTO _build() {
    final _$result = _$v ??
        _$GroupBriefDTO._(
          id: id,
          name: name,
          groupType: groupType,
          parentId: parentId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
