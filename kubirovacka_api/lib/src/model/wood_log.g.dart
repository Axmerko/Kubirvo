// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLog extends WoodLog {
  @override
  final WoodLogType woodLogType;
  @override
  final double volume;
  @override
  final bool isRhizome;
  @override
  final int number;
  @override
  final WoodType woodType;
  @override
  final int quality;
  @override
  final String logsListId;
  @override
  final String? id;
  @override
  final double? length;
  @override
  final double? diameter;
  @override
  final String? fsdu;
  @override
  final NpgsqlPoint? location;
  @override
  final DateTime? addedAt;
  @override
  final int? rawCategory;
  @override
  final WoodLogList? woodLogList;

  factory _$WoodLog([void Function(WoodLogBuilder)? updates]) =>
      (WoodLogBuilder()..update(updates))._build();

  _$WoodLog._(
      {required this.woodLogType,
      required this.volume,
      required this.isRhizome,
      required this.number,
      required this.woodType,
      required this.quality,
      required this.logsListId,
      this.id,
      this.length,
      this.diameter,
      this.fsdu,
      this.location,
      this.addedAt,
      this.rawCategory,
      this.woodLogList})
      : super._();
  @override
  WoodLog rebuild(void Function(WoodLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogBuilder toBuilder() => WoodLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLog &&
        woodLogType == other.woodLogType &&
        volume == other.volume &&
        isRhizome == other.isRhizome &&
        number == other.number &&
        woodType == other.woodType &&
        quality == other.quality &&
        logsListId == other.logsListId &&
        id == other.id &&
        length == other.length &&
        diameter == other.diameter &&
        fsdu == other.fsdu &&
        location == other.location &&
        addedAt == other.addedAt &&
        rawCategory == other.rawCategory &&
        woodLogList == other.woodLogList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, woodLogType.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, isRhizome.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, woodType.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, logsListId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, diameter.hashCode);
    _$hash = $jc(_$hash, fsdu.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, rawCategory.hashCode);
    _$hash = $jc(_$hash, woodLogList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLog')
          ..add('woodLogType', woodLogType)
          ..add('volume', volume)
          ..add('isRhizome', isRhizome)
          ..add('number', number)
          ..add('woodType', woodType)
          ..add('quality', quality)
          ..add('logsListId', logsListId)
          ..add('id', id)
          ..add('length', length)
          ..add('diameter', diameter)
          ..add('fsdu', fsdu)
          ..add('location', location)
          ..add('addedAt', addedAt)
          ..add('rawCategory', rawCategory)
          ..add('woodLogList', woodLogList))
        .toString();
  }
}

class WoodLogBuilder implements Builder<WoodLog, WoodLogBuilder> {
  _$WoodLog? _$v;

  WoodLogType? _woodLogType;
  WoodLogType? get woodLogType => _$this._woodLogType;
  set woodLogType(WoodLogType? woodLogType) =>
      _$this._woodLogType = woodLogType;

  double? _volume;
  double? get volume => _$this._volume;
  set volume(double? volume) => _$this._volume = volume;

  bool? _isRhizome;
  bool? get isRhizome => _$this._isRhizome;
  set isRhizome(bool? isRhizome) => _$this._isRhizome = isRhizome;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  WoodType? _woodType;
  WoodType? get woodType => _$this._woodType;
  set woodType(WoodType? woodType) => _$this._woodType = woodType;

  int? _quality;
  int? get quality => _$this._quality;
  set quality(int? quality) => _$this._quality = quality;

  String? _logsListId;
  String? get logsListId => _$this._logsListId;
  set logsListId(String? logsListId) => _$this._logsListId = logsListId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _length;
  double? get length => _$this._length;
  set length(double? length) => _$this._length = length;

  double? _diameter;
  double? get diameter => _$this._diameter;
  set diameter(double? diameter) => _$this._diameter = diameter;

  String? _fsdu;
  String? get fsdu => _$this._fsdu;
  set fsdu(String? fsdu) => _$this._fsdu = fsdu;

  NpgsqlPointBuilder? _location;
  NpgsqlPointBuilder get location => _$this._location ??= NpgsqlPointBuilder();
  set location(NpgsqlPointBuilder? location) => _$this._location = location;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  int? _rawCategory;
  int? get rawCategory => _$this._rawCategory;
  set rawCategory(int? rawCategory) => _$this._rawCategory = rawCategory;

  WoodLogListBuilder? _woodLogList;
  WoodLogListBuilder get woodLogList =>
      _$this._woodLogList ??= WoodLogListBuilder();
  set woodLogList(WoodLogListBuilder? woodLogList) =>
      _$this._woodLogList = woodLogList;

  WoodLogBuilder() {
    WoodLog._defaults(this);
  }

  WoodLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _woodLogType = $v.woodLogType;
      _volume = $v.volume;
      _isRhizome = $v.isRhizome;
      _number = $v.number;
      _woodType = $v.woodType;
      _quality = $v.quality;
      _logsListId = $v.logsListId;
      _id = $v.id;
      _length = $v.length;
      _diameter = $v.diameter;
      _fsdu = $v.fsdu;
      _location = $v.location?.toBuilder();
      _addedAt = $v.addedAt;
      _rawCategory = $v.rawCategory;
      _woodLogList = $v.woodLogList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLog other) {
    _$v = other as _$WoodLog;
  }

  @override
  void update(void Function(WoodLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLog build() => _build();

  _$WoodLog _build() {
    _$WoodLog _$result;
    try {
      _$result = _$v ??
          _$WoodLog._(
            woodLogType: BuiltValueNullFieldError.checkNotNull(
                woodLogType, r'WoodLog', 'woodLogType'),
            volume: BuiltValueNullFieldError.checkNotNull(
                volume, r'WoodLog', 'volume'),
            isRhizome: BuiltValueNullFieldError.checkNotNull(
                isRhizome, r'WoodLog', 'isRhizome'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'WoodLog', 'number'),
            woodType: BuiltValueNullFieldError.checkNotNull(
                woodType, r'WoodLog', 'woodType'),
            quality: BuiltValueNullFieldError.checkNotNull(
                quality, r'WoodLog', 'quality'),
            logsListId: BuiltValueNullFieldError.checkNotNull(
                logsListId, r'WoodLog', 'logsListId'),
            id: id,
            length: length,
            diameter: diameter,
            fsdu: fsdu,
            location: _location?.build(),
            addedAt: addedAt,
            rawCategory: rawCategory,
            woodLogList: _woodLogList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();

        _$failedField = 'woodLogList';
        _woodLogList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
