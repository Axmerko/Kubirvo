// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_to_display_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdToDisplayDTO extends AdToDisplayDTO {
  @override
  final String? id;
  @override
  final String? url;
  @override
  final AdContentType? contentType;
  @override
  final String? content;

  factory _$AdToDisplayDTO([void Function(AdToDisplayDTOBuilder)? updates]) =>
      (AdToDisplayDTOBuilder()..update(updates))._build();

  _$AdToDisplayDTO._({this.id, this.url, this.contentType, this.content})
      : super._();
  @override
  AdToDisplayDTO rebuild(void Function(AdToDisplayDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdToDisplayDTOBuilder toBuilder() => AdToDisplayDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdToDisplayDTO &&
        id == other.id &&
        url == other.url &&
        contentType == other.contentType &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdToDisplayDTO')
          ..add('id', id)
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('content', content))
        .toString();
  }
}

class AdToDisplayDTOBuilder
    implements Builder<AdToDisplayDTO, AdToDisplayDTOBuilder> {
  _$AdToDisplayDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AdContentType? _contentType;
  AdContentType? get contentType => _$this._contentType;
  set contentType(AdContentType? contentType) =>
      _$this._contentType = contentType;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  AdToDisplayDTOBuilder() {
    AdToDisplayDTO._defaults(this);
  }

  AdToDisplayDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _contentType = $v.contentType;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdToDisplayDTO other) {
    _$v = other as _$AdToDisplayDTO;
  }

  @override
  void update(void Function(AdToDisplayDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdToDisplayDTO build() => _build();

  _$AdToDisplayDTO _build() {
    final _$result = _$v ??
        _$AdToDisplayDTO._(
          id: id,
          url: url,
          contentType: contentType,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
