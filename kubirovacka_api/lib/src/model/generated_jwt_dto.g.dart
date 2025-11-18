// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_jwt_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeneratedJwtDTO extends GeneratedJwtDTO {
  @override
  final String? token;
  @override
  final DateTime? expiration;

  factory _$GeneratedJwtDTO([void Function(GeneratedJwtDTOBuilder)? updates]) =>
      (GeneratedJwtDTOBuilder()..update(updates))._build();

  _$GeneratedJwtDTO._({this.token, this.expiration}) : super._();
  @override
  GeneratedJwtDTO rebuild(void Function(GeneratedJwtDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneratedJwtDTOBuilder toBuilder() => GeneratedJwtDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneratedJwtDTO &&
        token == other.token &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneratedJwtDTO')
          ..add('token', token)
          ..add('expiration', expiration))
        .toString();
  }
}

class GeneratedJwtDTOBuilder
    implements Builder<GeneratedJwtDTO, GeneratedJwtDTOBuilder> {
  _$GeneratedJwtDTO? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  GeneratedJwtDTOBuilder() {
    GeneratedJwtDTO._defaults(this);
  }

  GeneratedJwtDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneratedJwtDTO other) {
    _$v = other as _$GeneratedJwtDTO;
  }

  @override
  void update(void Function(GeneratedJwtDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneratedJwtDTO build() => _build();

  _$GeneratedJwtDTO _build() {
    final _$result = _$v ??
        _$GeneratedJwtDTO._(
          token: token,
          expiration: expiration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
