// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedbackDTO extends FeedbackDTO {
  @override
  final String message;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final UserProfileDTO? user;
  @override
  final DateTime? createdAt;
  @override
  final FeedbackStatus? status;

  factory _$FeedbackDTO([void Function(FeedbackDTOBuilder)? updates]) =>
      (FeedbackDTOBuilder()..update(updates))._build();

  _$FeedbackDTO._(
      {required this.message,
      this.id,
      this.userId,
      this.user,
      this.createdAt,
      this.status})
      : super._();
  @override
  FeedbackDTO rebuild(void Function(FeedbackDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackDTOBuilder toBuilder() => FeedbackDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackDTO &&
        message == other.message &&
        id == other.id &&
        userId == other.userId &&
        user == other.user &&
        createdAt == other.createdAt &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackDTO')
          ..add('message', message)
          ..add('id', id)
          ..add('userId', userId)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('status', status))
        .toString();
  }
}

class FeedbackDTOBuilder implements Builder<FeedbackDTO, FeedbackDTOBuilder> {
  _$FeedbackDTO? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UserProfileDTOBuilder? _user;
  UserProfileDTOBuilder get user => _$this._user ??= UserProfileDTOBuilder();
  set user(UserProfileDTOBuilder? user) => _$this._user = user;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  FeedbackStatus? _status;
  FeedbackStatus? get status => _$this._status;
  set status(FeedbackStatus? status) => _$this._status = status;

  FeedbackDTOBuilder() {
    FeedbackDTO._defaults(this);
  }

  FeedbackDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _id = $v.id;
      _userId = $v.userId;
      _user = $v.user?.toBuilder();
      _createdAt = $v.createdAt;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackDTO other) {
    _$v = other as _$FeedbackDTO;
  }

  @override
  void update(void Function(FeedbackDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackDTO build() => _build();

  _$FeedbackDTO _build() {
    _$FeedbackDTO _$result;
    try {
      _$result = _$v ??
          _$FeedbackDTO._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'FeedbackDTO', 'message'),
            id: id,
            userId: userId,
            user: _user?.build(),
            createdAt: createdAt,
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FeedbackDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
