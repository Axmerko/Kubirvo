// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_stat_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListStatDTO extends WoodLogListStatDTO {
  @override
  final double? value;

  factory _$WoodLogListStatDTO(
          [void Function(WoodLogListStatDTOBuilder)? updates]) =>
      (WoodLogListStatDTOBuilder()..update(updates))._build();

  _$WoodLogListStatDTO._({this.value}) : super._();
  @override
  WoodLogListStatDTO rebuild(
          void Function(WoodLogListStatDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListStatDTOBuilder toBuilder() =>
      WoodLogListStatDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListStatDTO && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListStatDTO')
          ..add('value', value))
        .toString();
  }
}

class WoodLogListStatDTOBuilder
    implements Builder<WoodLogListStatDTO, WoodLogListStatDTOBuilder> {
  _$WoodLogListStatDTO? _$v;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  WoodLogListStatDTOBuilder() {
    WoodLogListStatDTO._defaults(this);
  }

  WoodLogListStatDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListStatDTO other) {
    _$v = other as _$WoodLogListStatDTO;
  }

  @override
  void update(void Function(WoodLogListStatDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListStatDTO build() => _build();

  _$WoodLogListStatDTO _build() {
    final _$result = _$v ??
        _$WoodLogListStatDTO._(
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
