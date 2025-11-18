// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_message_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfoMessageDTO extends InfoMessageDTO {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final String? linkText;
  @override
  final String? url;
  @override
  final DateTime? showUntil;

  factory _$InfoMessageDTO([void Function(InfoMessageDTOBuilder)? updates]) =>
      (InfoMessageDTOBuilder()..update(updates))._build();

  _$InfoMessageDTO._(
      {this.id, this.title, this.text, this.linkText, this.url, this.showUntil})
      : super._();
  @override
  InfoMessageDTO rebuild(void Function(InfoMessageDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoMessageDTOBuilder toBuilder() => InfoMessageDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfoMessageDTO &&
        id == other.id &&
        title == other.title &&
        text == other.text &&
        linkText == other.linkText &&
        url == other.url &&
        showUntil == other.showUntil;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, linkText.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, showUntil.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfoMessageDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('text', text)
          ..add('linkText', linkText)
          ..add('url', url)
          ..add('showUntil', showUntil))
        .toString();
  }
}

class InfoMessageDTOBuilder
    implements Builder<InfoMessageDTO, InfoMessageDTOBuilder> {
  _$InfoMessageDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _linkText;
  String? get linkText => _$this._linkText;
  set linkText(String? linkText) => _$this._linkText = linkText;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  DateTime? _showUntil;
  DateTime? get showUntil => _$this._showUntil;
  set showUntil(DateTime? showUntil) => _$this._showUntil = showUntil;

  InfoMessageDTOBuilder() {
    InfoMessageDTO._defaults(this);
  }

  InfoMessageDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _text = $v.text;
      _linkText = $v.linkText;
      _url = $v.url;
      _showUntil = $v.showUntil;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfoMessageDTO other) {
    _$v = other as _$InfoMessageDTO;
  }

  @override
  void update(void Function(InfoMessageDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfoMessageDTO build() => _build();

  _$InfoMessageDTO _build() {
    final _$result = _$v ??
        _$InfoMessageDTO._(
          id: id,
          title: title,
          text: text,
          linkText: linkText,
          url: url,
          showUntil: showUntil,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
