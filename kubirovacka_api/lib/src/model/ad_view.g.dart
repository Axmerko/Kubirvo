// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdView extends AdView {
  @override
  final String adId;
  @override
  final DateTime viewedAt;
  @override
  final String ip;
  @override
  final int cost;
  @override
  final Ad? ad;

  factory _$AdView([void Function(AdViewBuilder)? updates]) =>
      (AdViewBuilder()..update(updates))._build();

  _$AdView._(
      {required this.adId,
      required this.viewedAt,
      required this.ip,
      required this.cost,
      this.ad})
      : super._();
  @override
  AdView rebuild(void Function(AdViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdViewBuilder toBuilder() => AdViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdView &&
        adId == other.adId &&
        viewedAt == other.viewedAt &&
        ip == other.ip &&
        cost == other.cost &&
        ad == other.ad;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adId.hashCode);
    _$hash = $jc(_$hash, viewedAt.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, cost.hashCode);
    _$hash = $jc(_$hash, ad.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdView')
          ..add('adId', adId)
          ..add('viewedAt', viewedAt)
          ..add('ip', ip)
          ..add('cost', cost)
          ..add('ad', ad))
        .toString();
  }
}

class AdViewBuilder implements Builder<AdView, AdViewBuilder> {
  _$AdView? _$v;

  String? _adId;
  String? get adId => _$this._adId;
  set adId(String? adId) => _$this._adId = adId;

  DateTime? _viewedAt;
  DateTime? get viewedAt => _$this._viewedAt;
  set viewedAt(DateTime? viewedAt) => _$this._viewedAt = viewedAt;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  int? _cost;
  int? get cost => _$this._cost;
  set cost(int? cost) => _$this._cost = cost;

  AdBuilder? _ad;
  AdBuilder get ad => _$this._ad ??= AdBuilder();
  set ad(AdBuilder? ad) => _$this._ad = ad;

  AdViewBuilder() {
    AdView._defaults(this);
  }

  AdViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adId = $v.adId;
      _viewedAt = $v.viewedAt;
      _ip = $v.ip;
      _cost = $v.cost;
      _ad = $v.ad?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdView other) {
    _$v = other as _$AdView;
  }

  @override
  void update(void Function(AdViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdView build() => _build();

  _$AdView _build() {
    _$AdView _$result;
    try {
      _$result = _$v ??
          _$AdView._(
            adId:
                BuiltValueNullFieldError.checkNotNull(adId, r'AdView', 'adId'),
            viewedAt: BuiltValueNullFieldError.checkNotNull(
                viewedAt, r'AdView', 'viewedAt'),
            ip: BuiltValueNullFieldError.checkNotNull(ip, r'AdView', 'ip'),
            cost:
                BuiltValueNullFieldError.checkNotNull(cost, r'AdView', 'cost'),
            ad: _ad?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ad';
        _ad?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdView', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
