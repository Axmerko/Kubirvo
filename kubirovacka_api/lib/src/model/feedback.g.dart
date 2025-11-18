// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Feedback extends Feedback {
  @override
  final String message;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final FeedbackStatus status;
  @override
  final String? id;
  @override
  final User? user;

  factory _$Feedback([void Function(FeedbackBuilder)? updates]) =>
      (FeedbackBuilder()..update(updates))._build();

  _$Feedback._(
      {required this.message,
      required this.userId,
      required this.createdAt,
      required this.status,
      this.id,
      this.user})
      : super._();
  @override
  Feedback rebuild(void Function(FeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackBuilder toBuilder() => FeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feedback &&
        message == other.message &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        status == other.status &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Feedback')
          ..add('message', message)
          ..add('userId', userId)
          ..add('createdAt', createdAt)
          ..add('status', status)
          ..add('id', id)
          ..add('user', user))
        .toString();
  }
}

class FeedbackBuilder implements Builder<Feedback, FeedbackBuilder> {
  _$Feedback? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  FeedbackStatus? _status;
  FeedbackStatus? get status => _$this._status;
  set status(FeedbackStatus? status) => _$this._status = status;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  FeedbackBuilder() {
    Feedback._defaults(this);
  }

  FeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _userId = $v.userId;
      _createdAt = $v.createdAt;
      _status = $v.status;
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feedback other) {
    _$v = other as _$Feedback;
  }

  @override
  void update(void Function(FeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Feedback build() => _build();

  _$Feedback _build() {
    _$Feedback _$result;
    try {
      _$result = _$v ??
          _$Feedback._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Feedback', 'message'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'Feedback', 'userId'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Feedback', 'createdAt'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Feedback', 'status'),
            id: id,
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Feedback', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
