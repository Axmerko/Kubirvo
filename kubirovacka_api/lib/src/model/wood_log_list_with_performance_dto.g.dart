// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_with_performance_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListWithPerformanceDTO extends WoodLogListWithPerformanceDTO {
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final String ownerGroupId;
  @override
  final BuiltList<WoodLogDTO> logs;
  @override
  final String? id;
  @override
  final RewardType? rewardType;
  @override
  final int? rewardInCents;
  @override
  final bool? editedFromWeb;
  @override
  final DateTime? updatedAt;
  @override
  final int? version;
  @override
  final WoodLogListStatusDTO? statusDto;
  @override
  final double? volume;
  @override
  final double? earnings;

  factory _$WoodLogListWithPerformanceDTO(
          [void Function(WoodLogListWithPerformanceDTOBuilder)? updates]) =>
      (WoodLogListWithPerformanceDTOBuilder()..update(updates))._build();

  _$WoodLogListWithPerformanceDTO._(
      {required this.name,
      required this.createdAt,
      required this.ownerGroupId,
      required this.logs,
      this.id,
      this.rewardType,
      this.rewardInCents,
      this.editedFromWeb,
      this.updatedAt,
      this.version,
      this.statusDto,
      this.volume,
      this.earnings})
      : super._();
  @override
  WoodLogListWithPerformanceDTO rebuild(
          void Function(WoodLogListWithPerformanceDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListWithPerformanceDTOBuilder toBuilder() =>
      WoodLogListWithPerformanceDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListWithPerformanceDTO &&
        name == other.name &&
        createdAt == other.createdAt &&
        ownerGroupId == other.ownerGroupId &&
        logs == other.logs &&
        id == other.id &&
        rewardType == other.rewardType &&
        rewardInCents == other.rewardInCents &&
        editedFromWeb == other.editedFromWeb &&
        updatedAt == other.updatedAt &&
        version == other.version &&
        statusDto == other.statusDto &&
        volume == other.volume &&
        earnings == other.earnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, logs.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rewardType.hashCode);
    _$hash = $jc(_$hash, rewardInCents.hashCode);
    _$hash = $jc(_$hash, editedFromWeb.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, statusDto.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, earnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListWithPerformanceDTO')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('ownerGroupId', ownerGroupId)
          ..add('logs', logs)
          ..add('id', id)
          ..add('rewardType', rewardType)
          ..add('rewardInCents', rewardInCents)
          ..add('editedFromWeb', editedFromWeb)
          ..add('updatedAt', updatedAt)
          ..add('version', version)
          ..add('statusDto', statusDto)
          ..add('volume', volume)
          ..add('earnings', earnings))
        .toString();
  }
}

class WoodLogListWithPerformanceDTOBuilder
    implements
        Builder<WoodLogListWithPerformanceDTO,
            WoodLogListWithPerformanceDTOBuilder> {
  _$WoodLogListWithPerformanceDTO? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  ListBuilder<WoodLogDTO>? _logs;
  ListBuilder<WoodLogDTO> get logs =>
      _$this._logs ??= ListBuilder<WoodLogDTO>();
  set logs(ListBuilder<WoodLogDTO>? logs) => _$this._logs = logs;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  RewardType? _rewardType;
  RewardType? get rewardType => _$this._rewardType;
  set rewardType(RewardType? rewardType) => _$this._rewardType = rewardType;

  int? _rewardInCents;
  int? get rewardInCents => _$this._rewardInCents;
  set rewardInCents(int? rewardInCents) =>
      _$this._rewardInCents = rewardInCents;

  bool? _editedFromWeb;
  bool? get editedFromWeb => _$this._editedFromWeb;
  set editedFromWeb(bool? editedFromWeb) =>
      _$this._editedFromWeb = editedFromWeb;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  WoodLogListStatusDTOBuilder? _statusDto;
  WoodLogListStatusDTOBuilder get statusDto =>
      _$this._statusDto ??= WoodLogListStatusDTOBuilder();
  set statusDto(WoodLogListStatusDTOBuilder? statusDto) =>
      _$this._statusDto = statusDto;

  double? _volume;
  double? get volume => _$this._volume;
  set volume(double? volume) => _$this._volume = volume;

  double? _earnings;
  double? get earnings => _$this._earnings;
  set earnings(double? earnings) => _$this._earnings = earnings;

  WoodLogListWithPerformanceDTOBuilder() {
    WoodLogListWithPerformanceDTO._defaults(this);
  }

  WoodLogListWithPerformanceDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createdAt = $v.createdAt;
      _ownerGroupId = $v.ownerGroupId;
      _logs = $v.logs.toBuilder();
      _id = $v.id;
      _rewardType = $v.rewardType;
      _rewardInCents = $v.rewardInCents;
      _editedFromWeb = $v.editedFromWeb;
      _updatedAt = $v.updatedAt;
      _version = $v.version;
      _statusDto = $v.statusDto?.toBuilder();
      _volume = $v.volume;
      _earnings = $v.earnings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListWithPerformanceDTO other) {
    _$v = other as _$WoodLogListWithPerformanceDTO;
  }

  @override
  void update(void Function(WoodLogListWithPerformanceDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListWithPerformanceDTO build() => _build();

  _$WoodLogListWithPerformanceDTO _build() {
    _$WoodLogListWithPerformanceDTO _$result;
    try {
      _$result = _$v ??
          _$WoodLogListWithPerformanceDTO._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WoodLogListWithPerformanceDTO', 'name'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'WoodLogListWithPerformanceDTO', 'createdAt'),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'WoodLogListWithPerformanceDTO', 'ownerGroupId'),
            logs: logs.build(),
            id: id,
            rewardType: rewardType,
            rewardInCents: rewardInCents,
            editedFromWeb: editedFromWeb,
            updatedAt: updatedAt,
            version: version,
            statusDto: _statusDto?.build(),
            volume: volume,
            earnings: earnings,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logs';
        logs.build();

        _$failedField = 'statusDto';
        _statusDto?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogListWithPerformanceDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
