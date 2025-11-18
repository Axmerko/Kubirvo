// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_send_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListSendDTO extends WoodLogListSendDTO {
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
  @override
  final String? creatorId;
  @override
  final String? creatorEmail;
  @override
  final String? creatorFistName;
  @override
  final String? creatorLastName;
  @override
  final String? sharerId;
  @override
  final String? sharerFirstName;
  @override
  final String? sharerLastName;
  @override
  final String? sharerEmail;
  @override
  final bool? accepted;

  factory _$WoodLogListSendDTO(
          [void Function(WoodLogListSendDTOBuilder)? updates]) =>
      (WoodLogListSendDTOBuilder()..update(updates))._build();

  _$WoodLogListSendDTO._(
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
      this.earnings,
      this.creatorId,
      this.creatorEmail,
      this.creatorFistName,
      this.creatorLastName,
      this.sharerId,
      this.sharerFirstName,
      this.sharerLastName,
      this.sharerEmail,
      this.accepted})
      : super._();
  @override
  WoodLogListSendDTO rebuild(
          void Function(WoodLogListSendDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListSendDTOBuilder toBuilder() =>
      WoodLogListSendDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListSendDTO &&
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
        earnings == other.earnings &&
        creatorId == other.creatorId &&
        creatorEmail == other.creatorEmail &&
        creatorFistName == other.creatorFistName &&
        creatorLastName == other.creatorLastName &&
        sharerId == other.sharerId &&
        sharerFirstName == other.sharerFirstName &&
        sharerLastName == other.sharerLastName &&
        sharerEmail == other.sharerEmail &&
        accepted == other.accepted;
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
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, creatorEmail.hashCode);
    _$hash = $jc(_$hash, creatorFistName.hashCode);
    _$hash = $jc(_$hash, creatorLastName.hashCode);
    _$hash = $jc(_$hash, sharerId.hashCode);
    _$hash = $jc(_$hash, sharerFirstName.hashCode);
    _$hash = $jc(_$hash, sharerLastName.hashCode);
    _$hash = $jc(_$hash, sharerEmail.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListSendDTO')
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
          ..add('earnings', earnings)
          ..add('creatorId', creatorId)
          ..add('creatorEmail', creatorEmail)
          ..add('creatorFistName', creatorFistName)
          ..add('creatorLastName', creatorLastName)
          ..add('sharerId', sharerId)
          ..add('sharerFirstName', sharerFirstName)
          ..add('sharerLastName', sharerLastName)
          ..add('sharerEmail', sharerEmail)
          ..add('accepted', accepted))
        .toString();
  }
}

class WoodLogListSendDTOBuilder
    implements Builder<WoodLogListSendDTO, WoodLogListSendDTOBuilder> {
  _$WoodLogListSendDTO? _$v;

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

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  String? _creatorEmail;
  String? get creatorEmail => _$this._creatorEmail;
  set creatorEmail(String? creatorEmail) => _$this._creatorEmail = creatorEmail;

  String? _creatorFistName;
  String? get creatorFistName => _$this._creatorFistName;
  set creatorFistName(String? creatorFistName) =>
      _$this._creatorFistName = creatorFistName;

  String? _creatorLastName;
  String? get creatorLastName => _$this._creatorLastName;
  set creatorLastName(String? creatorLastName) =>
      _$this._creatorLastName = creatorLastName;

  String? _sharerId;
  String? get sharerId => _$this._sharerId;
  set sharerId(String? sharerId) => _$this._sharerId = sharerId;

  String? _sharerFirstName;
  String? get sharerFirstName => _$this._sharerFirstName;
  set sharerFirstName(String? sharerFirstName) =>
      _$this._sharerFirstName = sharerFirstName;

  String? _sharerLastName;
  String? get sharerLastName => _$this._sharerLastName;
  set sharerLastName(String? sharerLastName) =>
      _$this._sharerLastName = sharerLastName;

  String? _sharerEmail;
  String? get sharerEmail => _$this._sharerEmail;
  set sharerEmail(String? sharerEmail) => _$this._sharerEmail = sharerEmail;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  WoodLogListSendDTOBuilder() {
    WoodLogListSendDTO._defaults(this);
  }

  WoodLogListSendDTOBuilder get _$this {
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
      _creatorId = $v.creatorId;
      _creatorEmail = $v.creatorEmail;
      _creatorFistName = $v.creatorFistName;
      _creatorLastName = $v.creatorLastName;
      _sharerId = $v.sharerId;
      _sharerFirstName = $v.sharerFirstName;
      _sharerLastName = $v.sharerLastName;
      _sharerEmail = $v.sharerEmail;
      _accepted = $v.accepted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListSendDTO other) {
    _$v = other as _$WoodLogListSendDTO;
  }

  @override
  void update(void Function(WoodLogListSendDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListSendDTO build() => _build();

  _$WoodLogListSendDTO _build() {
    _$WoodLogListSendDTO _$result;
    try {
      _$result = _$v ??
          _$WoodLogListSendDTO._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WoodLogListSendDTO', 'name'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'WoodLogListSendDTO', 'createdAt'),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'WoodLogListSendDTO', 'ownerGroupId'),
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
            creatorId: creatorId,
            creatorEmail: creatorEmail,
            creatorFistName: creatorFistName,
            creatorLastName: creatorLastName,
            sharerId: sharerId,
            sharerFirstName: sharerFirstName,
            sharerLastName: sharerLastName,
            sharerEmail: sharerEmail,
            accepted: accepted,
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
            r'WoodLogListSendDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
