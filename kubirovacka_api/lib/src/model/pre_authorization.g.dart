// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_authorization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreAuthorization extends PreAuthorization {
  @override
  final bool? requested;
  @override
  final PreAuthState? state;

  factory _$PreAuthorization(
          [void Function(PreAuthorizationBuilder)? updates]) =>
      (PreAuthorizationBuilder()..update(updates))._build();

  _$PreAuthorization._({this.requested, this.state}) : super._();
  @override
  PreAuthorization rebuild(void Function(PreAuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreAuthorizationBuilder toBuilder() =>
      PreAuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreAuthorization &&
        requested == other.requested &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requested.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreAuthorization')
          ..add('requested', requested)
          ..add('state', state))
        .toString();
  }
}

class PreAuthorizationBuilder
    implements Builder<PreAuthorization, PreAuthorizationBuilder> {
  _$PreAuthorization? _$v;

  bool? _requested;
  bool? get requested => _$this._requested;
  set requested(bool? requested) => _$this._requested = requested;

  PreAuthState? _state;
  PreAuthState? get state => _$this._state;
  set state(PreAuthState? state) => _$this._state = state;

  PreAuthorizationBuilder() {
    PreAuthorization._defaults(this);
  }

  PreAuthorizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requested = $v.requested;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreAuthorization other) {
    _$v = other as _$PreAuthorization;
  }

  @override
  void update(void Function(PreAuthorizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreAuthorization build() => _build();

  _$PreAuthorization _build() {
    final _$result = _$v ??
        _$PreAuthorization._(
          requested: requested,
          state: state,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
