// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto_grid_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileDTOGridDTO extends UserProfileDTOGridDTO {
  @override
  final BuiltList<UserProfileDTO>? items;
  @override
  final int? total;

  factory _$UserProfileDTOGridDTO(
          [void Function(UserProfileDTOGridDTOBuilder)? updates]) =>
      (UserProfileDTOGridDTOBuilder()..update(updates))._build();

  _$UserProfileDTOGridDTO._({this.items, this.total}) : super._();
  @override
  UserProfileDTOGridDTO rebuild(
          void Function(UserProfileDTOGridDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileDTOGridDTOBuilder toBuilder() =>
      UserProfileDTOGridDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileDTOGridDTO &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileDTOGridDTO')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class UserProfileDTOGridDTOBuilder
    implements Builder<UserProfileDTOGridDTO, UserProfileDTOGridDTOBuilder> {
  _$UserProfileDTOGridDTO? _$v;

  ListBuilder<UserProfileDTO>? _items;
  ListBuilder<UserProfileDTO> get items =>
      _$this._items ??= ListBuilder<UserProfileDTO>();
  set items(ListBuilder<UserProfileDTO>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  UserProfileDTOGridDTOBuilder() {
    UserProfileDTOGridDTO._defaults(this);
  }

  UserProfileDTOGridDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileDTOGridDTO other) {
    _$v = other as _$UserProfileDTOGridDTO;
  }

  @override
  void update(void Function(UserProfileDTOGridDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileDTOGridDTO build() => _build();

  _$UserProfileDTOGridDTO _build() {
    _$UserProfileDTOGridDTO _$result;
    try {
      _$result = _$v ??
          _$UserProfileDTOGridDTO._(
            items: _items?.build(),
            total: total,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserProfileDTOGridDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
