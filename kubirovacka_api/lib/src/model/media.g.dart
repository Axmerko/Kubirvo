// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Media extends Media {
  @override
  final String mediaBytes;
  @override
  final String? id;
  @override
  final BuiltList<Ad>? ads;

  factory _$Media([void Function(MediaBuilder)? updates]) =>
      (MediaBuilder()..update(updates))._build();

  _$Media._({required this.mediaBytes, this.id, this.ads}) : super._();
  @override
  Media rebuild(void Function(MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        mediaBytes == other.mediaBytes &&
        id == other.id &&
        ads == other.ads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaBytes.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Media')
          ..add('mediaBytes', mediaBytes)
          ..add('id', id)
          ..add('ads', ads))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media? _$v;

  String? _mediaBytes;
  String? get mediaBytes => _$this._mediaBytes;
  set mediaBytes(String? mediaBytes) => _$this._mediaBytes = mediaBytes;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<Ad>? _ads;
  ListBuilder<Ad> get ads => _$this._ads ??= ListBuilder<Ad>();
  set ads(ListBuilder<Ad>? ads) => _$this._ads = ads;

  MediaBuilder() {
    Media._defaults(this);
  }

  MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaBytes = $v.mediaBytes;
      _id = $v.id;
      _ads = $v.ads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    _$v = other as _$Media;
  }

  @override
  void update(void Function(MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Media build() => _build();

  _$Media _build() {
    _$Media _$result;
    try {
      _$result = _$v ??
          _$Media._(
            mediaBytes: BuiltValueNullFieldError.checkNotNull(
                mediaBytes, r'Media', 'mediaBytes'),
            id: id,
            ads: _ads?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ads';
        _ads?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
