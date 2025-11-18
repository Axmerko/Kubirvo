// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wood_log_list_send.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WoodLogListSend extends WoodLogListSend {
  @override
  final String creatorId;
  @override
  final String? id;
  @override
  final String? email;
  @override
  final DateTime? createdAt;
  @override
  final User? creator;
  @override
  final BuiltList<WoodLogList>? woodLogLists;

  factory _$WoodLogListSend([void Function(WoodLogListSendBuilder)? updates]) =>
      (WoodLogListSendBuilder()..update(updates))._build();

  _$WoodLogListSend._(
      {required this.creatorId,
      this.id,
      this.email,
      this.createdAt,
      this.creator,
      this.woodLogLists})
      : super._();
  @override
  WoodLogListSend rebuild(void Function(WoodLogListSendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WoodLogListSendBuilder toBuilder() => WoodLogListSendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WoodLogListSend &&
        creatorId == other.creatorId &&
        id == other.id &&
        email == other.email &&
        createdAt == other.createdAt &&
        creator == other.creator &&
        woodLogLists == other.woodLogLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, woodLogLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WoodLogListSend')
          ..add('creatorId', creatorId)
          ..add('id', id)
          ..add('email', email)
          ..add('createdAt', createdAt)
          ..add('creator', creator)
          ..add('woodLogLists', woodLogLists))
        .toString();
  }
}

class WoodLogListSendBuilder
    implements Builder<WoodLogListSend, WoodLogListSendBuilder> {
  _$WoodLogListSend? _$v;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  UserBuilder? _creator;
  UserBuilder get creator => _$this._creator ??= UserBuilder();
  set creator(UserBuilder? creator) => _$this._creator = creator;

  ListBuilder<WoodLogList>? _woodLogLists;
  ListBuilder<WoodLogList> get woodLogLists =>
      _$this._woodLogLists ??= ListBuilder<WoodLogList>();
  set woodLogLists(ListBuilder<WoodLogList>? woodLogLists) =>
      _$this._woodLogLists = woodLogLists;

  WoodLogListSendBuilder() {
    WoodLogListSend._defaults(this);
  }

  WoodLogListSendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creatorId = $v.creatorId;
      _id = $v.id;
      _email = $v.email;
      _createdAt = $v.createdAt;
      _creator = $v.creator?.toBuilder();
      _woodLogLists = $v.woodLogLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WoodLogListSend other) {
    _$v = other as _$WoodLogListSend;
  }

  @override
  void update(void Function(WoodLogListSendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WoodLogListSend build() => _build();

  _$WoodLogListSend _build() {
    _$WoodLogListSend _$result;
    try {
      _$result = _$v ??
          _$WoodLogListSend._(
            creatorId: BuiltValueNullFieldError.checkNotNull(
                creatorId, r'WoodLogListSend', 'creatorId'),
            id: id,
            email: email,
            createdAt: createdAt,
            creator: _creator?.build(),
            woodLogLists: _woodLogLists?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
        _$failedField = 'woodLogLists';
        _woodLogLists?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WoodLogListSend', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
