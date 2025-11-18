// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_stat_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdStatDTO extends AdStatDTO {
  @override
  final JsonObject? value;

  factory _$AdStatDTO([void Function(AdStatDTOBuilder)? updates]) =>
      (AdStatDTOBuilder()..update(updates))._build();

  _$AdStatDTO._({this.value}) : super._();
  @override
  AdStatDTO rebuild(void Function(AdStatDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdStatDTOBuilder toBuilder() => AdStatDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdStatDTO && value == other.value;
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
    return (newBuiltValueToStringHelper(r'AdStatDTO')..add('value', value))
        .toString();
  }
}

class AdStatDTOBuilder implements Builder<AdStatDTO, AdStatDTOBuilder> {
  _$AdStatDTO? _$v;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  AdStatDTOBuilder() {
    AdStatDTO._defaults(this);
  }

  AdStatDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdStatDTO other) {
    _$v = other as _$AdStatDTO;
  }

  @override
  void update(void Function(AdStatDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdStatDTO build() => _build();

  _$AdStatDTO _build() {
    final _$result = _$v ??
        _$AdStatDTO._(
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
