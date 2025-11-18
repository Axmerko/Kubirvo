// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'npgsql_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NpgsqlPoint extends NpgsqlPoint {
  @override
  final double? x;
  @override
  final double? y;

  factory _$NpgsqlPoint([void Function(NpgsqlPointBuilder)? updates]) =>
      (NpgsqlPointBuilder()..update(updates))._build();

  _$NpgsqlPoint._({this.x, this.y}) : super._();
  @override
  NpgsqlPoint rebuild(void Function(NpgsqlPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NpgsqlPointBuilder toBuilder() => NpgsqlPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NpgsqlPoint && x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NpgsqlPoint')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class NpgsqlPointBuilder implements Builder<NpgsqlPoint, NpgsqlPointBuilder> {
  _$NpgsqlPoint? _$v;

  double? _x;
  double? get x => _$this._x;
  set x(double? x) => _$this._x = x;

  double? _y;
  double? get y => _$this._y;
  set y(double? y) => _$this._y = y;

  NpgsqlPointBuilder() {
    NpgsqlPoint._defaults(this);
  }

  NpgsqlPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NpgsqlPoint other) {
    _$v = other as _$NpgsqlPoint;
  }

  @override
  void update(void Function(NpgsqlPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NpgsqlPoint build() => _build();

  _$NpgsqlPoint _build() {
    final _$result = _$v ??
        _$NpgsqlPoint._(
          x: x,
          y: y,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
