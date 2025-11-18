// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdDTO extends AdDTO {
  @override
  final String name;
  @override
  final bool limitCostPerDay;
  @override
  final AdType? adType;
  @override
  final int? maxCostPerDay;
  @override
  final DateTime? showFrom;
  @override
  final AdContentType? adContentType;
  @override
  final String? imageId;
  @override
  final String? destinationUrl;
  @override
  final String? html;
  @override
  final String? adId;
  @override
  final DateTime? createdAt;
  @override
  final bool? approved;
  @override
  final bool? enabled;
  @override
  final int? credits;

  factory _$AdDTO([void Function(AdDTOBuilder)? updates]) =>
      (AdDTOBuilder()..update(updates))._build();

  _$AdDTO._(
      {required this.name,
      required this.limitCostPerDay,
      this.adType,
      this.maxCostPerDay,
      this.showFrom,
      this.adContentType,
      this.imageId,
      this.destinationUrl,
      this.html,
      this.adId,
      this.createdAt,
      this.approved,
      this.enabled,
      this.credits})
      : super._();
  @override
  AdDTO rebuild(void Function(AdDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdDTOBuilder toBuilder() => AdDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdDTO &&
        name == other.name &&
        limitCostPerDay == other.limitCostPerDay &&
        adType == other.adType &&
        maxCostPerDay == other.maxCostPerDay &&
        showFrom == other.showFrom &&
        adContentType == other.adContentType &&
        imageId == other.imageId &&
        destinationUrl == other.destinationUrl &&
        html == other.html &&
        adId == other.adId &&
        createdAt == other.createdAt &&
        approved == other.approved &&
        enabled == other.enabled &&
        credits == other.credits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, limitCostPerDay.hashCode);
    _$hash = $jc(_$hash, adType.hashCode);
    _$hash = $jc(_$hash, maxCostPerDay.hashCode);
    _$hash = $jc(_$hash, showFrom.hashCode);
    _$hash = $jc(_$hash, adContentType.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, destinationUrl.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, adId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, credits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdDTO')
          ..add('name', name)
          ..add('limitCostPerDay', limitCostPerDay)
          ..add('adType', adType)
          ..add('maxCostPerDay', maxCostPerDay)
          ..add('showFrom', showFrom)
          ..add('adContentType', adContentType)
          ..add('imageId', imageId)
          ..add('destinationUrl', destinationUrl)
          ..add('html', html)
          ..add('adId', adId)
          ..add('createdAt', createdAt)
          ..add('approved', approved)
          ..add('enabled', enabled)
          ..add('credits', credits))
        .toString();
  }
}

class AdDTOBuilder implements Builder<AdDTO, AdDTOBuilder> {
  _$AdDTO? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _limitCostPerDay;
  bool? get limitCostPerDay => _$this._limitCostPerDay;
  set limitCostPerDay(bool? limitCostPerDay) =>
      _$this._limitCostPerDay = limitCostPerDay;

  AdType? _adType;
  AdType? get adType => _$this._adType;
  set adType(AdType? adType) => _$this._adType = adType;

  int? _maxCostPerDay;
  int? get maxCostPerDay => _$this._maxCostPerDay;
  set maxCostPerDay(int? maxCostPerDay) =>
      _$this._maxCostPerDay = maxCostPerDay;

  DateTime? _showFrom;
  DateTime? get showFrom => _$this._showFrom;
  set showFrom(DateTime? showFrom) => _$this._showFrom = showFrom;

  AdContentType? _adContentType;
  AdContentType? get adContentType => _$this._adContentType;
  set adContentType(AdContentType? adContentType) =>
      _$this._adContentType = adContentType;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _destinationUrl;
  String? get destinationUrl => _$this._destinationUrl;
  set destinationUrl(String? destinationUrl) =>
      _$this._destinationUrl = destinationUrl;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _adId;
  String? get adId => _$this._adId;
  set adId(String? adId) => _$this._adId = adId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _credits;
  int? get credits => _$this._credits;
  set credits(int? credits) => _$this._credits = credits;

  AdDTOBuilder() {
    AdDTO._defaults(this);
  }

  AdDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _limitCostPerDay = $v.limitCostPerDay;
      _adType = $v.adType;
      _maxCostPerDay = $v.maxCostPerDay;
      _showFrom = $v.showFrom;
      _adContentType = $v.adContentType;
      _imageId = $v.imageId;
      _destinationUrl = $v.destinationUrl;
      _html = $v.html;
      _adId = $v.adId;
      _createdAt = $v.createdAt;
      _approved = $v.approved;
      _enabled = $v.enabled;
      _credits = $v.credits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdDTO other) {
    _$v = other as _$AdDTO;
  }

  @override
  void update(void Function(AdDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdDTO build() => _build();

  _$AdDTO _build() {
    final _$result = _$v ??
        _$AdDTO._(
          name: BuiltValueNullFieldError.checkNotNull(name, r'AdDTO', 'name'),
          limitCostPerDay: BuiltValueNullFieldError.checkNotNull(
              limitCostPerDay, r'AdDTO', 'limitCostPerDay'),
          adType: adType,
          maxCostPerDay: maxCostPerDay,
          showFrom: showFrom,
          adContentType: adContentType,
          imageId: imageId,
          destinationUrl: destinationUrl,
          html: html,
          adId: adId,
          createdAt: createdAt,
          approved: approved,
          enabled: enabled,
          credits: credits,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
