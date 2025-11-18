// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_locked_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLockedDTO extends UpdateLockedDTO {
  @override
  final String id;
  @override
  final bool locked;

  factory _$UpdateLockedDTO([void Function(UpdateLockedDTOBuilder)? updates]) =>
      (UpdateLockedDTOBuilder()..update(updates))._build();

  _$UpdateLockedDTO._({required this.id, required this.locked}) : super._();
  @override
  UpdateLockedDTO rebuild(void Function(UpdateLockedDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLockedDTOBuilder toBuilder() => UpdateLockedDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLockedDTO && id == other.id && locked == other.locked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateLockedDTO')
          ..add('id', id)
          ..add('locked', locked))
        .toString();
  }
}

class UpdateLockedDTOBuilder
    implements Builder<UpdateLockedDTO, UpdateLockedDTOBuilder> {
  _$UpdateLockedDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  UpdateLockedDTOBuilder() {
    UpdateLockedDTO._defaults(this);
  }

  UpdateLockedDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _locked = $v.locked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLockedDTO other) {
    _$v = other as _$UpdateLockedDTO;
  }

  @override
  void update(void Function(UpdateLockedDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLockedDTO build() => _build();

  _$UpdateLockedDTO _build() {
    final _$result = _$v ??
        _$UpdateLockedDTO._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UpdateLockedDTO', 'id'),
          locked: BuiltValueNullFieldError.checkNotNull(
              locked, r'UpdateLockedDTO', 'locked'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
