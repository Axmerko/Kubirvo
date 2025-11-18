// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_click.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdClick extends AdClick {
  @override
  final String adId;
  @override
  final DateTime clickedAt;
  @override
  final String ip;
  @override
  final int cost;
  @override
  final Ad? ad;

  factory _$AdClick([void Function(AdClickBuilder)? updates]) =>
      (AdClickBuilder()..update(updates))._build();

  _$AdClick._(
      {required this.adId,
      required this.clickedAt,
      required this.ip,
      required this.cost,
      this.ad})
      : super._();
  @override
  AdClick rebuild(void Function(AdClickBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdClickBuilder toBuilder() => AdClickBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdClick &&
        adId == other.adId &&
        clickedAt == other.clickedAt &&
        ip == other.ip &&
        cost == other.cost &&
        ad == other.ad;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adId.hashCode);
    _$hash = $jc(_$hash, clickedAt.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, cost.hashCode);
    _$hash = $jc(_$hash, ad.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdClick')
          ..add('adId', adId)
          ..add('clickedAt', clickedAt)
          ..add('ip', ip)
          ..add('cost', cost)
          ..add('ad', ad))
        .toString();
  }
}

class AdClickBuilder implements Builder<AdClick, AdClickBuilder> {
  _$AdClick? _$v;

  String? _adId;
  String? get adId => _$this._adId;
  set adId(String? adId) => _$this._adId = adId;

  DateTime? _clickedAt;
  DateTime? get clickedAt => _$this._clickedAt;
  set clickedAt(DateTime? clickedAt) => _$this._clickedAt = clickedAt;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  int? _cost;
  int? get cost => _$this._cost;
  set cost(int? cost) => _$this._cost = cost;

  AdBuilder? _ad;
  AdBuilder get ad => _$this._ad ??= AdBuilder();
  set ad(AdBuilder? ad) => _$this._ad = ad;

  AdClickBuilder() {
    AdClick._defaults(this);
  }

  AdClickBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adId = $v.adId;
      _clickedAt = $v.clickedAt;
      _ip = $v.ip;
      _cost = $v.cost;
      _ad = $v.ad?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdClick other) {
    _$v = other as _$AdClick;
  }

  @override
  void update(void Function(AdClickBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdClick build() => _build();

  _$AdClick _build() {
    _$AdClick _$result;
    try {
      _$result = _$v ??
          _$AdClick._(
            adId:
                BuiltValueNullFieldError.checkNotNull(adId, r'AdClick', 'adId'),
            clickedAt: BuiltValueNullFieldError.checkNotNull(
                clickedAt, r'AdClick', 'clickedAt'),
            ip: BuiltValueNullFieldError.checkNotNull(ip, r'AdClick', 'ip'),
            cost:
                BuiltValueNullFieldError.checkNotNull(cost, r'AdClick', 'cost'),
            ad: _ad?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ad';
        _ad?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdClick', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
