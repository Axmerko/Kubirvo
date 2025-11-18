// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListSummaryDTO extends WoodLogListSummaryDTO {
  @override
  final int? logsQuantity;
  @override
  final int? logsNumberOfRhizomes;
  @override
  final double? logsVolume;
  @override
  final int? rawsQuantity;
  @override
  final int? rawsNumberOfRhizomes;
  @override
  final double? rawsVolume;
  @override
  final double? averageWeightOfPiece;
  @override
  final double? averageWeightOfTree;

  factory _$WoodLogListSummaryDTO(
          [void Function(WoodLogListSummaryDTOBuilder)? updates]) =>
      (WoodLogListSummaryDTOBuilder()..update(updates))._build();

  _$WoodLogListSummaryDTO._(
      {this.logsQuantity,
      this.logsNumberOfRhizomes,
      this.logsVolume,
      this.rawsQuantity,
      this.rawsNumberOfRhizomes,
      this.rawsVolume,
      this.averageWeightOfPiece,
      this.averageWeightOfTree})
      : super._();
  @override
  WoodLogListSummaryDTO rebuild(
          void Function(WoodLogListSummaryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListSummaryDTOBuilder toBuilder() =>
      WoodLogListSummaryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListSummaryDTO &&
        logsQuantity == other.logsQuantity &&
        logsNumberOfRhizomes == other.logsNumberOfRhizomes &&
        logsVolume == other.logsVolume &&
        rawsQuantity == other.rawsQuantity &&
        rawsNumberOfRhizomes == other.rawsNumberOfRhizomes &&
        rawsVolume == other.rawsVolume &&
        averageWeightOfPiece == other.averageWeightOfPiece &&
        averageWeightOfTree == other.averageWeightOfTree;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logsQuantity.hashCode);
    _$hash = $jc(_$hash, logsNumberOfRhizomes.hashCode);
    _$hash = $jc(_$hash, logsVolume.hashCode);
    _$hash = $jc(_$hash, rawsQuantity.hashCode);
    _$hash = $jc(_$hash, rawsNumberOfRhizomes.hashCode);
    _$hash = $jc(_$hash, rawsVolume.hashCode);
    _$hash = $jc(_$hash, averageWeightOfPiece.hashCode);
    _$hash = $jc(_$hash, averageWeightOfTree.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListSummaryDTO')
          ..add('logsQuantity', logsQuantity)
          ..add('logsNumberOfRhizomes', logsNumberOfRhizomes)
          ..add('logsVolume', logsVolume)
          ..add('rawsQuantity', rawsQuantity)
          ..add('rawsNumberOfRhizomes', rawsNumberOfRhizomes)
          ..add('rawsVolume', rawsVolume)
          ..add('averageWeightOfPiece', averageWeightOfPiece)
          ..add('averageWeightOfTree', averageWeightOfTree))
        .toString();
  }
}

class WoodLogListSummaryDTOBuilder
    implements Builder<WoodLogListSummaryDTO, WoodLogListSummaryDTOBuilder> {
  _$WoodLogListSummaryDTO? _$v;

  int? _logsQuantity;
  int? get logsQuantity => _$this._logsQuantity;
  set logsQuantity(int? logsQuantity) => _$this._logsQuantity = logsQuantity;

  int? _logsNumberOfRhizomes;
  int? get logsNumberOfRhizomes => _$this._logsNumberOfRhizomes;
  set logsNumberOfRhizomes(int? logsNumberOfRhizomes) =>
      _$this._logsNumberOfRhizomes = logsNumberOfRhizomes;

  double? _logsVolume;
  double? get logsVolume => _$this._logsVolume;
  set logsVolume(double? logsVolume) => _$this._logsVolume = logsVolume;

  int? _rawsQuantity;
  int? get rawsQuantity => _$this._rawsQuantity;
  set rawsQuantity(int? rawsQuantity) => _$this._rawsQuantity = rawsQuantity;

  int? _rawsNumberOfRhizomes;
  int? get rawsNumberOfRhizomes => _$this._rawsNumberOfRhizomes;
  set rawsNumberOfRhizomes(int? rawsNumberOfRhizomes) =>
      _$this._rawsNumberOfRhizomes = rawsNumberOfRhizomes;

  double? _rawsVolume;
  double? get rawsVolume => _$this._rawsVolume;
  set rawsVolume(double? rawsVolume) => _$this._rawsVolume = rawsVolume;

  double? _averageWeightOfPiece;
  double? get averageWeightOfPiece => _$this._averageWeightOfPiece;
  set averageWeightOfPiece(double? averageWeightOfPiece) =>
      _$this._averageWeightOfPiece = averageWeightOfPiece;

  double? _averageWeightOfTree;
  double? get averageWeightOfTree => _$this._averageWeightOfTree;
  set averageWeightOfTree(double? averageWeightOfTree) =>
      _$this._averageWeightOfTree = averageWeightOfTree;

  WoodLogListSummaryDTOBuilder() {
    WoodLogListSummaryDTO._defaults(this);
  }

  WoodLogListSummaryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logsQuantity = $v.logsQuantity;
      _logsNumberOfRhizomes = $v.logsNumberOfRhizomes;
      _logsVolume = $v.logsVolume;
      _rawsQuantity = $v.rawsQuantity;
      _rawsNumberOfRhizomes = $v.rawsNumberOfRhizomes;
      _rawsVolume = $v.rawsVolume;
      _averageWeightOfPiece = $v.averageWeightOfPiece;
      _averageWeightOfTree = $v.averageWeightOfTree;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListSummaryDTO other) {
    _$v = other as _$WoodLogListSummaryDTO;
  }

  @override
  void update(void Function(WoodLogListSummaryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListSummaryDTO build() => _build();

  _$WoodLogListSummaryDTO _build() {
    final _$result = _$v ??
        _$WoodLogListSummaryDTO._(
          logsQuantity: logsQuantity,
          logsNumberOfRhizomes: logsNumberOfRhizomes,
          logsVolume: logsVolume,
          rawsQuantity: rawsQuantity,
          rawsNumberOfRhizomes: rawsNumberOfRhizomes,
          rawsVolume: rawsVolume,
          averageWeightOfPiece: averageWeightOfPiece,
          averageWeightOfTree: averageWeightOfTree,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
