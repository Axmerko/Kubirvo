// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_report_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogReportDTO extends WoodLogReportDTO {
  @override
  final String? number;
  @override
  final String? wood;
  @override
  final String? length;
  @override
  final String? diameter;
  @override
  final String? sortiment;
  @override
  final double? volume;
  @override
  final bool? isRhizome;
  @override
  final String? fsdu;

  factory _$WoodLogReportDTO(
          [void Function(WoodLogReportDTOBuilder)? updates]) =>
      (WoodLogReportDTOBuilder()..update(updates))._build();

  _$WoodLogReportDTO._(
      {this.number,
      this.wood,
      this.length,
      this.diameter,
      this.sortiment,
      this.volume,
      this.isRhizome,
      this.fsdu})
      : super._();
  @override
  WoodLogReportDTO rebuild(void Function(WoodLogReportDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogReportDTOBuilder toBuilder() =>
      WoodLogReportDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogReportDTO &&
        number == other.number &&
        wood == other.wood &&
        length == other.length &&
        diameter == other.diameter &&
        sortiment == other.sortiment &&
        volume == other.volume &&
        isRhizome == other.isRhizome &&
        fsdu == other.fsdu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, wood.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, diameter.hashCode);
    _$hash = $jc(_$hash, sortiment.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, isRhizome.hashCode);
    _$hash = $jc(_$hash, fsdu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogReportDTO')
          ..add('number', number)
          ..add('wood', wood)
          ..add('length', length)
          ..add('diameter', diameter)
          ..add('sortiment', sortiment)
          ..add('volume', volume)
          ..add('isRhizome', isRhizome)
          ..add('fsdu', fsdu))
        .toString();
  }
}

class WoodLogReportDTOBuilder
    implements Builder<WoodLogReportDTO, WoodLogReportDTOBuilder> {
  _$WoodLogReportDTO? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _wood;
  String? get wood => _$this._wood;
  set wood(String? wood) => _$this._wood = wood;

  String? _length;
  String? get length => _$this._length;
  set length(String? length) => _$this._length = length;

  String? _diameter;
  String? get diameter => _$this._diameter;
  set diameter(String? diameter) => _$this._diameter = diameter;

  String? _sortiment;
  String? get sortiment => _$this._sortiment;
  set sortiment(String? sortiment) => _$this._sortiment = sortiment;

  double? _volume;
  double? get volume => _$this._volume;
  set volume(double? volume) => _$this._volume = volume;

  bool? _isRhizome;
  bool? get isRhizome => _$this._isRhizome;
  set isRhizome(bool? isRhizome) => _$this._isRhizome = isRhizome;

  String? _fsdu;
  String? get fsdu => _$this._fsdu;
  set fsdu(String? fsdu) => _$this._fsdu = fsdu;

  WoodLogReportDTOBuilder() {
    WoodLogReportDTO._defaults(this);
  }

  WoodLogReportDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _wood = $v.wood;
      _length = $v.length;
      _diameter = $v.diameter;
      _sortiment = $v.sortiment;
      _volume = $v.volume;
      _isRhizome = $v.isRhizome;
      _fsdu = $v.fsdu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogReportDTO other) {
    _$v = other as _$WoodLogReportDTO;
  }

  @override
  void update(void Function(WoodLogReportDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogReportDTO build() => _build();

  _$WoodLogReportDTO _build() {
    final _$result = _$v ??
        _$WoodLogReportDTO._(
          number: number,
          wood: wood,
          length: length,
          diameter: diameter,
          sortiment: sortiment,
          volume: volume,
          isRhizome: isRhizome,
          fsdu: fsdu,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
