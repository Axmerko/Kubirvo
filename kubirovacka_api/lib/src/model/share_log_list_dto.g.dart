// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_log_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareLogListDTO extends ShareLogListDTO {
  @override
  final String email;
  @override
  final BuiltList<String> woodLogListIds;
  @override
  final String? message;

  factory _$ShareLogListDTO([void Function(ShareLogListDTOBuilder)? updates]) =>
      (ShareLogListDTOBuilder()..update(updates))._build();

  _$ShareLogListDTO._(
      {required this.email, required this.woodLogListIds, this.message})
      : super._();
  @override
  ShareLogListDTO rebuild(void Function(ShareLogListDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareLogListDTOBuilder toBuilder() => ShareLogListDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareLogListDTO &&
        email == other.email &&
        woodLogListIds == other.woodLogListIds &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, woodLogListIds.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareLogListDTO')
          ..add('email', email)
          ..add('woodLogListIds', woodLogListIds)
          ..add('message', message))
        .toString();
  }
}

class ShareLogListDTOBuilder
    implements Builder<ShareLogListDTO, ShareLogListDTOBuilder> {
  _$ShareLogListDTO? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ListBuilder<String>? _woodLogListIds;
  ListBuilder<String> get woodLogListIds =>
      _$this._woodLogListIds ??= ListBuilder<String>();
  set woodLogListIds(ListBuilder<String>? woodLogListIds) =>
      _$this._woodLogListIds = woodLogListIds;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ShareLogListDTOBuilder() {
    ShareLogListDTO._defaults(this);
  }

  ShareLogListDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _woodLogListIds = $v.woodLogListIds.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareLogListDTO other) {
    _$v = other as _$ShareLogListDTO;
  }

  @override
  void update(void Function(ShareLogListDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareLogListDTO build() => _build();

  _$ShareLogListDTO _build() {
    _$ShareLogListDTO _$result;
    try {
      _$result = _$v ??
          _$ShareLogListDTO._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ShareLogListDTO', 'email'),
            woodLogListIds: woodLogListIds.build(),
            message: message,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'woodLogListIds';
        woodLogListIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ShareLogListDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
