// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_play_subscription_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GooglePlaySubscriptionNotification
    extends GooglePlaySubscriptionNotification {
  @override
  final String? version;
  @override
  final int? notificationType;
  @override
  final String? purchaseToken;
  @override
  final GooglePlaySubscriptionType? subscriptionId;

  factory _$GooglePlaySubscriptionNotification(
          [void Function(GooglePlaySubscriptionNotificationBuilder)?
              updates]) =>
      (GooglePlaySubscriptionNotificationBuilder()..update(updates))._build();

  _$GooglePlaySubscriptionNotification._(
      {this.version,
      this.notificationType,
      this.purchaseToken,
      this.subscriptionId})
      : super._();
  @override
  GooglePlaySubscriptionNotification rebuild(
          void Function(GooglePlaySubscriptionNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GooglePlaySubscriptionNotificationBuilder toBuilder() =>
      GooglePlaySubscriptionNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GooglePlaySubscriptionNotification &&
        version == other.version &&
        notificationType == other.notificationType &&
        purchaseToken == other.purchaseToken &&
        subscriptionId == other.subscriptionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, notificationType.hashCode);
    _$hash = $jc(_$hash, purchaseToken.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GooglePlaySubscriptionNotification')
          ..add('version', version)
          ..add('notificationType', notificationType)
          ..add('purchaseToken', purchaseToken)
          ..add('subscriptionId', subscriptionId))
        .toString();
  }
}

class GooglePlaySubscriptionNotificationBuilder
    implements
        Builder<GooglePlaySubscriptionNotification,
            GooglePlaySubscriptionNotificationBuilder> {
  _$GooglePlaySubscriptionNotification? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  int? _notificationType;
  int? get notificationType => _$this._notificationType;
  set notificationType(int? notificationType) =>
      _$this._notificationType = notificationType;

  String? _purchaseToken;
  String? get purchaseToken => _$this._purchaseToken;
  set purchaseToken(String? purchaseToken) =>
      _$this._purchaseToken = purchaseToken;

  GooglePlaySubscriptionType? _subscriptionId;
  GooglePlaySubscriptionType? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(GooglePlaySubscriptionType? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  GooglePlaySubscriptionNotificationBuilder() {
    GooglePlaySubscriptionNotification._defaults(this);
  }

  GooglePlaySubscriptionNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _notificationType = $v.notificationType;
      _purchaseToken = $v.purchaseToken;
      _subscriptionId = $v.subscriptionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GooglePlaySubscriptionNotification other) {
    _$v = other as _$GooglePlaySubscriptionNotification;
  }

  @override
  void update(
      void Function(GooglePlaySubscriptionNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GooglePlaySubscriptionNotification build() => _build();

  _$GooglePlaySubscriptionNotification _build() {
    final _$result = _$v ??
        _$GooglePlaySubscriptionNotification._(
          version: version,
          notificationType: notificationType,
          purchaseToken: purchaseToken,
          subscriptionId: subscriptionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
