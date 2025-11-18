// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortiment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SortimentDTO extends SortimentDTO {
  @override
  final String? id;
  @override
  final String? ownerGroupGuid;
  @override
  final String? ownerUserGuid;
  @override
  final String? name;
  @override
  final String? code;

  factory _$SortimentDTO([void Function(SortimentDTOBuilder)? updates]) =>
      (SortimentDTOBuilder()..update(updates))._build();

  _$SortimentDTO._(
      {this.id, this.ownerGroupGuid, this.ownerUserGuid, this.name, this.code})
      : super._();
  @override
  SortimentDTO rebuild(void Function(SortimentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortimentDTOBuilder toBuilder() => SortimentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortimentDTO &&
        id == other.id &&
        ownerGroupGuid == other.ownerGroupGuid &&
        ownerUserGuid == other.ownerUserGuid &&
        name == other.name &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ownerGroupGuid.hashCode);
    _$hash = $jc(_$hash, ownerUserGuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortimentDTO')
          ..add('id', id)
          ..add('ownerGroupGuid', ownerGroupGuid)
          ..add('ownerUserGuid', ownerUserGuid)
          ..add('name', name)
          ..add('code', code))
        .toString();
  }
}

class SortimentDTOBuilder
    implements Builder<SortimentDTO, SortimentDTOBuilder> {
  _$SortimentDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ownerGroupGuid;
  String? get ownerGroupGuid => _$this._ownerGroupGuid;
  set ownerGroupGuid(String? ownerGroupGuid) =>
      _$this._ownerGroupGuid = ownerGroupGuid;

  String? _ownerUserGuid;
  String? get ownerUserGuid => _$this._ownerUserGuid;
  set ownerUserGuid(String? ownerUserGuid) =>
      _$this._ownerUserGuid = ownerUserGuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  SortimentDTOBuilder() {
    SortimentDTO._defaults(this);
  }

  SortimentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ownerGroupGuid = $v.ownerGroupGuid;
      _ownerUserGuid = $v.ownerUserGuid;
      _name = $v.name;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortimentDTO other) {
    _$v = other as _$SortimentDTO;
  }

  @override
  void update(void Function(SortimentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortimentDTO build() => _build();

  _$SortimentDTO _build() {
    final _$result = _$v ??
        _$SortimentDTO._(
          id: id,
          ownerGroupGuid: ownerGroupGuid,
          ownerUserGuid: ownerUserGuid,
          name: name,
          code: code,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
