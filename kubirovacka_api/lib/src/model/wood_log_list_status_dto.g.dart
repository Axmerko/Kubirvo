// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_status_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListStatusDTO extends WoodLogListStatusDTO {
  @override
  final int? id;
  @override
  final String? customName;
  @override
  final bool? isGlobal;
  @override
  final String? ownerGroupId;
  @override
  final WoodLogListStatusType? statusType;

  factory _$WoodLogListStatusDTO(
          [void Function(WoodLogListStatusDTOBuilder)? updates]) =>
      (WoodLogListStatusDTOBuilder()..update(updates))._build();

  _$WoodLogListStatusDTO._(
      {this.id,
      this.customName,
      this.isGlobal,
      this.ownerGroupId,
      this.statusType})
      : super._();
  @override
  WoodLogListStatusDTO rebuild(
          void Function(WoodLogListStatusDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListStatusDTOBuilder toBuilder() =>
      WoodLogListStatusDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListStatusDTO &&
        id == other.id &&
        customName == other.customName &&
        isGlobal == other.isGlobal &&
        ownerGroupId == other.ownerGroupId &&
        statusType == other.statusType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customName.hashCode);
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, statusType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListStatusDTO')
          ..add('id', id)
          ..add('customName', customName)
          ..add('isGlobal', isGlobal)
          ..add('ownerGroupId', ownerGroupId)
          ..add('statusType', statusType))
        .toString();
  }
}

class WoodLogListStatusDTOBuilder
    implements Builder<WoodLogListStatusDTO, WoodLogListStatusDTOBuilder> {
  _$WoodLogListStatusDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _customName;
  String? get customName => _$this._customName;
  set customName(String? customName) => _$this._customName = customName;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  WoodLogListStatusType? _statusType;
  WoodLogListStatusType? get statusType => _$this._statusType;
  set statusType(WoodLogListStatusType? statusType) =>
      _$this._statusType = statusType;

  WoodLogListStatusDTOBuilder() {
    WoodLogListStatusDTO._defaults(this);
  }

  WoodLogListStatusDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customName = $v.customName;
      _isGlobal = $v.isGlobal;
      _ownerGroupId = $v.ownerGroupId;
      _statusType = $v.statusType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListStatusDTO other) {
    _$v = other as _$WoodLogListStatusDTO;
  }

  @override
  void update(void Function(WoodLogListStatusDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListStatusDTO build() => _build();

  _$WoodLogListStatusDTO _build() {
    final _$result = _$v ??
        _$WoodLogListStatusDTO._(
          id: id,
          customName: customName,
          isGlobal: isGlobal,
          ownerGroupId: ownerGroupId,
          statusType: statusType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
