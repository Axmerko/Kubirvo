// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Target extends Target {
  @override
  final TargetType? type;
  @override
  final int? goId;

  factory _$Target([void Function(TargetBuilder)? updates]) =>
      (TargetBuilder()..update(updates))._build();

  _$Target._({this.type, this.goId}) : super._();
  @override
  Target rebuild(void Function(TargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetBuilder toBuilder() => TargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Target && type == other.type && goId == other.goId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, goId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Target')
          ..add('type', type)
          ..add('goId', goId))
        .toString();
  }
}

class TargetBuilder implements Builder<Target, TargetBuilder> {
  _$Target? _$v;

  TargetType? _type;
  TargetType? get type => _$this._type;
  set type(TargetType? type) => _$this._type = type;

  int? _goId;
  int? get goId => _$this._goId;
  set goId(int? goId) => _$this._goId = goId;

  TargetBuilder() {
    Target._defaults(this);
  }

  TargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _goId = $v.goId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Target other) {
    _$v = other as _$Target;
  }

  @override
  void update(void Function(TargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Target build() => _build();

  _$Target _build() {
    final _$result = _$v ??
        _$Target._(
          type: type,
          goId: goId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
