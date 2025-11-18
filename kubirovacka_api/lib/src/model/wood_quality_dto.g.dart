// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_quality_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodQualityDTO extends WoodQualityDTO {
  @override
  final int quality;
  @override
  final String name;
  @override
  final bool disabled;

  factory _$WoodQualityDTO([void Function(WoodQualityDTOBuilder)? updates]) =>
      (WoodQualityDTOBuilder()..update(updates))._build();

  _$WoodQualityDTO._(
      {required this.quality, required this.name, required this.disabled})
      : super._();
  @override
  WoodQualityDTO rebuild(void Function(WoodQualityDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodQualityDTOBuilder toBuilder() => WoodQualityDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodQualityDTO &&
        quality == other.quality &&
        name == other.name &&
        disabled == other.disabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, disabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodQualityDTO')
          ..add('quality', quality)
          ..add('name', name)
          ..add('disabled', disabled))
        .toString();
  }
}

class WoodQualityDTOBuilder
    implements Builder<WoodQualityDTO, WoodQualityDTOBuilder> {
  _$WoodQualityDTO? _$v;

  int? _quality;
  int? get quality => _$this._quality;
  set quality(int? quality) => _$this._quality = quality;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _disabled;
  bool? get disabled => _$this._disabled;
  set disabled(bool? disabled) => _$this._disabled = disabled;

  WoodQualityDTOBuilder() {
    WoodQualityDTO._defaults(this);
  }

  WoodQualityDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quality = $v.quality;
      _name = $v.name;
      _disabled = $v.disabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodQualityDTO other) {
    _$v = other as _$WoodQualityDTO;
  }

  @override
  void update(void Function(WoodQualityDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodQualityDTO build() => _build();

  _$WoodQualityDTO _build() {
    final _$result = _$v ??
        _$WoodQualityDTO._(
          quality: BuiltValueNullFieldError.checkNotNull(
              quality, r'WoodQualityDTO', 'quality'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'WoodQualityDTO', 'name'),
          disabled: BuiltValueNullFieldError.checkNotNull(
              disabled, r'WoodQualityDTO', 'disabled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
