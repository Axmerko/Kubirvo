// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_sortiment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSortimentDTO extends CreateSortimentDTO {
  @override
  final String? name;
  @override
  final String? code;

  factory _$CreateSortimentDTO(
          [void Function(CreateSortimentDTOBuilder)? updates]) =>
      (CreateSortimentDTOBuilder()..update(updates))._build();

  _$CreateSortimentDTO._({this.name, this.code}) : super._();
  @override
  CreateSortimentDTO rebuild(
          void Function(CreateSortimentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSortimentDTOBuilder toBuilder() =>
      CreateSortimentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSortimentDTO &&
        name == other.name &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSortimentDTO')
          ..add('name', name)
          ..add('code', code))
        .toString();
  }
}

class CreateSortimentDTOBuilder
    implements Builder<CreateSortimentDTO, CreateSortimentDTOBuilder> {
  _$CreateSortimentDTO? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  CreateSortimentDTOBuilder() {
    CreateSortimentDTO._defaults(this);
  }

  CreateSortimentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSortimentDTO other) {
    _$v = other as _$CreateSortimentDTO;
  }

  @override
  void update(void Function(CreateSortimentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSortimentDTO build() => _build();

  _$CreateSortimentDTO _build() {
    final _$result = _$v ??
        _$CreateSortimentDTO._(
          name: name,
          code: code,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
