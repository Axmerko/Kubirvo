// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GraphDataDto extends GraphDataDto {
  @override
  final BuiltList<String>? graphValuesX;
  @override
  final BuiltList<double>? graphValuesY;

  factory _$GraphDataDto([void Function(GraphDataDtoBuilder)? updates]) =>
      (GraphDataDtoBuilder()..update(updates))._build();

  _$GraphDataDto._({this.graphValuesX, this.graphValuesY}) : super._();
  @override
  GraphDataDto rebuild(void Function(GraphDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphDataDtoBuilder toBuilder() => GraphDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphDataDto &&
        graphValuesX == other.graphValuesX &&
        graphValuesY == other.graphValuesY;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, graphValuesX.hashCode);
    _$hash = $jc(_$hash, graphValuesY.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GraphDataDto')
          ..add('graphValuesX', graphValuesX)
          ..add('graphValuesY', graphValuesY))
        .toString();
  }
}

class GraphDataDtoBuilder
    implements Builder<GraphDataDto, GraphDataDtoBuilder> {
  _$GraphDataDto? _$v;

  ListBuilder<String>? _graphValuesX;
  ListBuilder<String> get graphValuesX =>
      _$this._graphValuesX ??= ListBuilder<String>();
  set graphValuesX(ListBuilder<String>? graphValuesX) =>
      _$this._graphValuesX = graphValuesX;

  ListBuilder<double>? _graphValuesY;
  ListBuilder<double> get graphValuesY =>
      _$this._graphValuesY ??= ListBuilder<double>();
  set graphValuesY(ListBuilder<double>? graphValuesY) =>
      _$this._graphValuesY = graphValuesY;

  GraphDataDtoBuilder() {
    GraphDataDto._defaults(this);
  }

  GraphDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _graphValuesX = $v.graphValuesX?.toBuilder();
      _graphValuesY = $v.graphValuesY?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphDataDto other) {
    _$v = other as _$GraphDataDto;
  }

  @override
  void update(void Function(GraphDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GraphDataDto build() => _build();

  _$GraphDataDto _build() {
    _$GraphDataDto _$result;
    try {
      _$result = _$v ??
          _$GraphDataDto._(
            graphValuesX: _graphValuesX?.build(),
            graphValuesY: _graphValuesY?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'graphValuesX';
        _graphValuesX?.build();
        _$failedField = 'graphValuesY';
        _graphValuesY?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GraphDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
