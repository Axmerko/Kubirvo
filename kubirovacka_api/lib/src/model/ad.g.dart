// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ad extends Ad {
  @override
  final DateTime createdAt;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final bool approved;
  @override
  final AdType adType;
  @override
  final int credits;
  @override
  final int cpc;
  @override
  final int cpt;
  @override
  final bool limitCostPerDay;
  @override
  final String ownerGroupId;
  @override
  final DateTime showFrom;
  @override
  final AdContentType adContentType;
  @override
  final String? id;
  @override
  final int? maxCostPerDay;
  @override
  final Group? ownerGroup;
  @override
  final String? imageId;
  @override
  final Media? image;
  @override
  final String? destinationUrl;
  @override
  final String? html;
  @override
  final BuiltList<AdClick>? adClicks;
  @override
  final BuiltList<AdView>? adViews;

  factory _$Ad([void Function(AdBuilder)? updates]) =>
      (AdBuilder()..update(updates))._build();

  _$Ad._(
      {required this.createdAt,
      required this.name,
      required this.enabled,
      required this.approved,
      required this.adType,
      required this.credits,
      required this.cpc,
      required this.cpt,
      required this.limitCostPerDay,
      required this.ownerGroupId,
      required this.showFrom,
      required this.adContentType,
      this.id,
      this.maxCostPerDay,
      this.ownerGroup,
      this.imageId,
      this.image,
      this.destinationUrl,
      this.html,
      this.adClicks,
      this.adViews})
      : super._();
  @override
  Ad rebuild(void Function(AdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdBuilder toBuilder() => AdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ad &&
        createdAt == other.createdAt &&
        name == other.name &&
        enabled == other.enabled &&
        approved == other.approved &&
        adType == other.adType &&
        credits == other.credits &&
        cpc == other.cpc &&
        cpt == other.cpt &&
        limitCostPerDay == other.limitCostPerDay &&
        ownerGroupId == other.ownerGroupId &&
        showFrom == other.showFrom &&
        adContentType == other.adContentType &&
        id == other.id &&
        maxCostPerDay == other.maxCostPerDay &&
        ownerGroup == other.ownerGroup &&
        imageId == other.imageId &&
        image == other.image &&
        destinationUrl == other.destinationUrl &&
        html == other.html &&
        adClicks == other.adClicks &&
        adViews == other.adViews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, adType.hashCode);
    _$hash = $jc(_$hash, credits.hashCode);
    _$hash = $jc(_$hash, cpc.hashCode);
    _$hash = $jc(_$hash, cpt.hashCode);
    _$hash = $jc(_$hash, limitCostPerDay.hashCode);
    _$hash = $jc(_$hash, ownerGroupId.hashCode);
    _$hash = $jc(_$hash, showFrom.hashCode);
    _$hash = $jc(_$hash, adContentType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, maxCostPerDay.hashCode);
    _$hash = $jc(_$hash, ownerGroup.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, destinationUrl.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, adClicks.hashCode);
    _$hash = $jc(_$hash, adViews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ad')
          ..add('createdAt', createdAt)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('approved', approved)
          ..add('adType', adType)
          ..add('credits', credits)
          ..add('cpc', cpc)
          ..add('cpt', cpt)
          ..add('limitCostPerDay', limitCostPerDay)
          ..add('ownerGroupId', ownerGroupId)
          ..add('showFrom', showFrom)
          ..add('adContentType', adContentType)
          ..add('id', id)
          ..add('maxCostPerDay', maxCostPerDay)
          ..add('ownerGroup', ownerGroup)
          ..add('imageId', imageId)
          ..add('image', image)
          ..add('destinationUrl', destinationUrl)
          ..add('html', html)
          ..add('adClicks', adClicks)
          ..add('adViews', adViews))
        .toString();
  }
}

class AdBuilder implements Builder<Ad, AdBuilder> {
  _$Ad? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  AdType? _adType;
  AdType? get adType => _$this._adType;
  set adType(AdType? adType) => _$this._adType = adType;

  int? _credits;
  int? get credits => _$this._credits;
  set credits(int? credits) => _$this._credits = credits;

  int? _cpc;
  int? get cpc => _$this._cpc;
  set cpc(int? cpc) => _$this._cpc = cpc;

  int? _cpt;
  int? get cpt => _$this._cpt;
  set cpt(int? cpt) => _$this._cpt = cpt;

  bool? _limitCostPerDay;
  bool? get limitCostPerDay => _$this._limitCostPerDay;
  set limitCostPerDay(bool? limitCostPerDay) =>
      _$this._limitCostPerDay = limitCostPerDay;

  String? _ownerGroupId;
  String? get ownerGroupId => _$this._ownerGroupId;
  set ownerGroupId(String? ownerGroupId) => _$this._ownerGroupId = ownerGroupId;

  DateTime? _showFrom;
  DateTime? get showFrom => _$this._showFrom;
  set showFrom(DateTime? showFrom) => _$this._showFrom = showFrom;

  AdContentType? _adContentType;
  AdContentType? get adContentType => _$this._adContentType;
  set adContentType(AdContentType? adContentType) =>
      _$this._adContentType = adContentType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _maxCostPerDay;
  int? get maxCostPerDay => _$this._maxCostPerDay;
  set maxCostPerDay(int? maxCostPerDay) =>
      _$this._maxCostPerDay = maxCostPerDay;

  GroupBuilder? _ownerGroup;
  GroupBuilder get ownerGroup => _$this._ownerGroup ??= GroupBuilder();
  set ownerGroup(GroupBuilder? ownerGroup) => _$this._ownerGroup = ownerGroup;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  MediaBuilder? _image;
  MediaBuilder get image => _$this._image ??= MediaBuilder();
  set image(MediaBuilder? image) => _$this._image = image;

  String? _destinationUrl;
  String? get destinationUrl => _$this._destinationUrl;
  set destinationUrl(String? destinationUrl) =>
      _$this._destinationUrl = destinationUrl;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  ListBuilder<AdClick>? _adClicks;
  ListBuilder<AdClick> get adClicks =>
      _$this._adClicks ??= ListBuilder<AdClick>();
  set adClicks(ListBuilder<AdClick>? adClicks) => _$this._adClicks = adClicks;

  ListBuilder<AdView>? _adViews;
  ListBuilder<AdView> get adViews => _$this._adViews ??= ListBuilder<AdView>();
  set adViews(ListBuilder<AdView>? adViews) => _$this._adViews = adViews;

  AdBuilder() {
    Ad._defaults(this);
  }

  AdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _name = $v.name;
      _enabled = $v.enabled;
      _approved = $v.approved;
      _adType = $v.adType;
      _credits = $v.credits;
      _cpc = $v.cpc;
      _cpt = $v.cpt;
      _limitCostPerDay = $v.limitCostPerDay;
      _ownerGroupId = $v.ownerGroupId;
      _showFrom = $v.showFrom;
      _adContentType = $v.adContentType;
      _id = $v.id;
      _maxCostPerDay = $v.maxCostPerDay;
      _ownerGroup = $v.ownerGroup?.toBuilder();
      _imageId = $v.imageId;
      _image = $v.image?.toBuilder();
      _destinationUrl = $v.destinationUrl;
      _html = $v.html;
      _adClicks = $v.adClicks?.toBuilder();
      _adViews = $v.adViews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ad other) {
    _$v = other as _$Ad;
  }

  @override
  void update(void Function(AdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ad build() => _build();

  _$Ad _build() {
    _$Ad _$result;
    try {
      _$result = _$v ??
          _$Ad._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Ad', 'createdAt'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Ad', 'name'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'Ad', 'enabled'),
            approved: BuiltValueNullFieldError.checkNotNull(
                approved, r'Ad', 'approved'),
            adType:
                BuiltValueNullFieldError.checkNotNull(adType, r'Ad', 'adType'),
            credits: BuiltValueNullFieldError.checkNotNull(
                credits, r'Ad', 'credits'),
            cpc: BuiltValueNullFieldError.checkNotNull(cpc, r'Ad', 'cpc'),
            cpt: BuiltValueNullFieldError.checkNotNull(cpt, r'Ad', 'cpt'),
            limitCostPerDay: BuiltValueNullFieldError.checkNotNull(
                limitCostPerDay, r'Ad', 'limitCostPerDay'),
            ownerGroupId: BuiltValueNullFieldError.checkNotNull(
                ownerGroupId, r'Ad', 'ownerGroupId'),
            showFrom: BuiltValueNullFieldError.checkNotNull(
                showFrom, r'Ad', 'showFrom'),
            adContentType: BuiltValueNullFieldError.checkNotNull(
                adContentType, r'Ad', 'adContentType'),
            id: id,
            maxCostPerDay: maxCostPerDay,
            ownerGroup: _ownerGroup?.build(),
            imageId: imageId,
            image: _image?.build(),
            destinationUrl: destinationUrl,
            html: html,
            adClicks: _adClicks?.build(),
            adViews: _adViews?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownerGroup';
        _ownerGroup?.build();

        _$failedField = 'image';
        _image?.build();

        _$failedField = 'adClicks';
        _adClicks?.build();
        _$failedField = 'adViews';
        _adViews?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Ad', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
