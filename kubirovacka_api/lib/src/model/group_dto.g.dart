// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupDTO extends GroupDTO {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final GroupType? groupType;
  @override
  final String? parentId;
  @override
  final bool? isHomeGroup;
  @override
  final BuiltList<JsonObject?>? permissions;
  @override
  final bool? isAdvertiser;
  @override
  final int? adCredits;

  factory _$GroupDTO([void Function(GroupDTOBuilder)? updates]) =>
      (GroupDTOBuilder()..update(updates))._build();

  _$GroupDTO._(
      {this.id,
      this.name,
      this.groupType,
      this.parentId,
      this.isHomeGroup,
      this.permissions,
      this.isAdvertiser,
      this.adCredits})
      : super._();
  @override
  GroupDTO rebuild(void Function(GroupDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupDTOBuilder toBuilder() => GroupDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupDTO &&
        id == other.id &&
        name == other.name &&
        groupType == other.groupType &&
        parentId == other.parentId &&
        isHomeGroup == other.isHomeGroup &&
        permissions == other.permissions &&
        isAdvertiser == other.isAdvertiser &&
        adCredits == other.adCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, isHomeGroup.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isAdvertiser.hashCode);
    _$hash = $jc(_$hash, adCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('groupType', groupType)
          ..add('parentId', parentId)
          ..add('isHomeGroup', isHomeGroup)
          ..add('permissions', permissions)
          ..add('isAdvertiser', isAdvertiser)
          ..add('adCredits', adCredits))
        .toString();
  }
}

class GroupDTOBuilder implements Builder<GroupDTO, GroupDTOBuilder> {
  _$GroupDTO? _$v;

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

  bool? _isHomeGroup;
  bool? get isHomeGroup => _$this._isHomeGroup;
  set isHomeGroup(bool? isHomeGroup) => _$this._isHomeGroup = isHomeGroup;

  ListBuilder<JsonObject?>? _permissions;
  ListBuilder<JsonObject?> get permissions =>
      _$this._permissions ??= ListBuilder<JsonObject?>();
  set permissions(ListBuilder<JsonObject?>? permissions) =>
      _$this._permissions = permissions;

  bool? _isAdvertiser;
  bool? get isAdvertiser => _$this._isAdvertiser;
  set isAdvertiser(bool? isAdvertiser) => _$this._isAdvertiser = isAdvertiser;

  int? _adCredits;
  int? get adCredits => _$this._adCredits;
  set adCredits(int? adCredits) => _$this._adCredits = adCredits;

  GroupDTOBuilder() {
    GroupDTO._defaults(this);
  }

  GroupDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _groupType = $v.groupType;
      _parentId = $v.parentId;
      _isHomeGroup = $v.isHomeGroup;
      _permissions = $v.permissions?.toBuilder();
      _isAdvertiser = $v.isAdvertiser;
      _adCredits = $v.adCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupDTO other) {
    _$v = other as _$GroupDTO;
  }

  @override
  void update(void Function(GroupDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupDTO build() => _build();

  _$GroupDTO _build() {
    _$GroupDTO _$result;
    try {
      _$result = _$v ??
          _$GroupDTO._(
            id: id,
            name: name,
            groupType: groupType,
            parentId: parentId,
            isHomeGroup: isHomeGroup,
            permissions: _permissions?.build(),
            isAdvertiser: isAdvertiser,
            adCredits: adCredits,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
