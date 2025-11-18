// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_play_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GooglePlayNotification extends GooglePlayNotification {
  @override
  final String? version;
  @override
  final String? packageName;
  @override
  final int? eventTimeMillis;
  @override
  final GooglePlaySubscriptionNotification? subscriptionNotification;

  factory _$GooglePlayNotification(
          [void Function(GooglePlayNotificationBuilder)? updates]) =>
      (GooglePlayNotificationBuilder()..update(updates))._build();

  _$GooglePlayNotification._(
      {this.version,
      this.packageName,
      this.eventTimeMillis,
      this.subscriptionNotification})
      : super._();
  @override
  GooglePlayNotification rebuild(
          void Function(GooglePlayNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GooglePlayNotificationBuilder toBuilder() =>
      GooglePlayNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GooglePlayNotification &&
        version == other.version &&
        packageName == other.packageName &&
        eventTimeMillis == other.eventTimeMillis &&
        subscriptionNotification == other.subscriptionNotification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, packageName.hashCode);
    _$hash = $jc(_$hash, eventTimeMillis.hashCode);
    _$hash = $jc(_$hash, subscriptionNotification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GooglePlayNotification')
          ..add('version', version)
          ..add('packageName', packageName)
          ..add('eventTimeMillis', eventTimeMillis)
          ..add('subscriptionNotification', subscriptionNotification))
        .toString();
  }
}

class GooglePlayNotificationBuilder
    implements Builder<GooglePlayNotification, GooglePlayNotificationBuilder> {
  _$GooglePlayNotification? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _packageName;
  String? get packageName => _$this._packageName;
  set packageName(String? packageName) => _$this._packageName = packageName;

  int? _eventTimeMillis;
  int? get eventTimeMillis => _$this._eventTimeMillis;
  set eventTimeMillis(int? eventTimeMillis) =>
      _$this._eventTimeMillis = eventTimeMillis;

  GooglePlaySubscriptionNotificationBuilder? _subscriptionNotification;
  GooglePlaySubscriptionNotificationBuilder get subscriptionNotification =>
      _$this._subscriptionNotification ??=
          GooglePlaySubscriptionNotificationBuilder();
  set subscriptionNotification(
          GooglePlaySubscriptionNotificationBuilder?
              subscriptionNotification) =>
      _$this._subscriptionNotification = subscriptionNotification;

  GooglePlayNotificationBuilder() {
    GooglePlayNotification._defaults(this);
  }

  GooglePlayNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _packageName = $v.packageName;
      _eventTimeMillis = $v.eventTimeMillis;
      _subscriptionNotification = $v.subscriptionNotification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GooglePlayNotification other) {
    _$v = other as _$GooglePlayNotification;
  }

  @override
  void update(void Function(GooglePlayNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GooglePlayNotification build() => _build();

  _$GooglePlayNotification _build() {
    _$GooglePlayNotification _$result;
    try {
      _$result = _$v ??
          _$GooglePlayNotification._(
            version: version,
            packageName: packageName,
            eventTimeMillis: eventTimeMillis,
            subscriptionNotification: _subscriptionNotification?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptionNotification';
        _subscriptionNotification?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GooglePlayNotification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
