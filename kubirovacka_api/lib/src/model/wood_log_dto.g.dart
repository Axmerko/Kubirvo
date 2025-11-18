// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogDTO extends WoodLogDTO {
  @override
  final WoodLogType woodLogType;
  @override
  final double length;
  @override
  final double diameter;
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
  final String? qualityName;
  @override
  final String? fsdu;
  @override
  final NpgsqlPoint? location;
  @override
  final DateTime? addedAt;
  @override
  final int? rawCategory;
  @override
  final int? position;

  factory _$WoodLogDTO([void Function(WoodLogDTOBuilder)? updates]) =>
      (WoodLogDTOBuilder()..update(updates))._build();

  _$WoodLogDTO._(
      {required this.woodLogType,
      required this.length,
      required this.diameter,
      required this.volume,
      required this.isRhizome,
      required this.number,
      required this.woodType,
      required this.quality,
      this.qualityName,
      this.fsdu,
      this.location,
      this.addedAt,
      this.rawCategory,
      this.position})
      : super._();
  @override
  WoodLogDTO rebuild(void Function(WoodLogDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogDTOBuilder toBuilder() => WoodLogDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogDTO &&
        woodLogType == other.woodLogType &&
        length == other.length &&
        diameter == other.diameter &&
        volume == other.volume &&
        isRhizome == other.isRhizome &&
        number == other.number &&
        woodType == other.woodType &&
        quality == other.quality &&
        qualityName == other.qualityName &&
        fsdu == other.fsdu &&
        location == other.location &&
        addedAt == other.addedAt &&
        rawCategory == other.rawCategory &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, woodLogType.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, diameter.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, isRhizome.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, woodType.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, qualityName.hashCode);
    _$hash = $jc(_$hash, fsdu.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, rawCategory.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogDTO')
          ..add('woodLogType', woodLogType)
          ..add('length', length)
          ..add('diameter', diameter)
          ..add('volume', volume)
          ..add('isRhizome', isRhizome)
          ..add('number', number)
          ..add('woodType', woodType)
          ..add('quality', quality)
          ..add('qualityName', qualityName)
          ..add('fsdu', fsdu)
          ..add('location', location)
          ..add('addedAt', addedAt)
          ..add('rawCategory', rawCategory)
          ..add('position', position))
        .toString();
  }
}

class WoodLogDTOBuilder implements Builder<WoodLogDTO, WoodLogDTOBuilder> {
  _$WoodLogDTO? _$v;

  WoodLogType? _woodLogType;
  WoodLogType? get woodLogType => _$this._woodLogType;
  set woodLogType(WoodLogType? woodLogType) =>
      _$this._woodLogType = woodLogType;

  double? _length;
  double? get length => _$this._length;
  set length(double? length) => _$this._length = length;

  double? _diameter;
  double? get diameter => _$this._diameter;
  set diameter(double? diameter) => _$this._diameter = diameter;

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

  String? _qualityName;
  String? get qualityName => _$this._qualityName;
  set qualityName(String? qualityName) => _$this._qualityName = qualityName;

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

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  WoodLogDTOBuilder() {
    WoodLogDTO._defaults(this);
  }

  WoodLogDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _woodLogType = $v.woodLogType;
      _length = $v.length;
      _diameter = $v.diameter;
      _volume = $v.volume;
      _isRhizome = $v.isRhizome;
      _number = $v.number;
      _woodType = $v.woodType;
      _quality = $v.quality;
      _qualityName = $v.qualityName;
      _fsdu = $v.fsdu;
      _location = $v.location?.toBuilder();
      _addedAt = $v.addedAt;
      _rawCategory = $v.rawCategory;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogDTO other) {
    _$v = other as _$WoodLogDTO;
  }

  @override
  void update(void Function(WoodLogDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogDTO build() => _build();

  _$WoodLogDTO _build() {
    _$WoodLogDTO _$result;
    try {
      _$result = _$v ??
          _$WoodLogDTO._(
            woodLogType: BuiltValueNullFieldError.checkNotNull(
                woodLogType, r'WoodLogDTO', 'woodLogType'),
            length: BuiltValueNullFieldError.checkNotNull(
                length, r'WoodLogDTO', 'length'),
            diameter: BuiltValueNullFieldError.checkNotNull(
                diameter, r'WoodLogDTO', 'diameter'),
            volume: BuiltValueNullFieldError.checkNotNull(
                volume, r'WoodLogDTO', 'volume'),
            isRhizome: BuiltValueNullFieldError.checkNotNull(
                isRhizome, r'WoodLogDTO', 'isRhizome'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'WoodLogDTO', 'number'),
            woodType: BuiltValueNullFieldError.checkNotNull(
                woodType, r'WoodLogDTO', 'woodType'),
            quality: BuiltValueNullFieldError.checkNotNull(
                quality, r'WoodLogDTO', 'quality'),
            qualityName: qualityName,
            fsdu: fsdu,
            location: _location?.build(),
            addedAt: addedAt,
            rawCategory: rawCategory,
            position: position,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
