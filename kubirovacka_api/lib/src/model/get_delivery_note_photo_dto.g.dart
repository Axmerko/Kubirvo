// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_note_photo_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeliveryNotePhotoDTO extends GetDeliveryNotePhotoDTO {
  @override
  final String? id;
  @override
  final String? fileName;
  @override
  final int? fileSize;
  @override
  final String? fileMimeType;
  @override
  final String? url;

  factory _$GetDeliveryNotePhotoDTO(
          [void Function(GetDeliveryNotePhotoDTOBuilder)? updates]) =>
      (GetDeliveryNotePhotoDTOBuilder()..update(updates))._build();

  _$GetDeliveryNotePhotoDTO._(
      {this.id, this.fileName, this.fileSize, this.fileMimeType, this.url})
      : super._();
  @override
  GetDeliveryNotePhotoDTO rebuild(
          void Function(GetDeliveryNotePhotoDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeliveryNotePhotoDTOBuilder toBuilder() =>
      GetDeliveryNotePhotoDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeliveryNotePhotoDTO &&
        id == other.id &&
        fileName == other.fileName &&
        fileSize == other.fileSize &&
        fileMimeType == other.fileMimeType &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, fileSize.hashCode);
    _$hash = $jc(_$hash, fileMimeType.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetDeliveryNotePhotoDTO')
          ..add('id', id)
          ..add('fileName', fileName)
          ..add('fileSize', fileSize)
          ..add('fileMimeType', fileMimeType)
          ..add('url', url))
        .toString();
  }
}

class GetDeliveryNotePhotoDTOBuilder
    implements
        Builder<GetDeliveryNotePhotoDTO, GetDeliveryNotePhotoDTOBuilder> {
  _$GetDeliveryNotePhotoDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  int? _fileSize;
  int? get fileSize => _$this._fileSize;
  set fileSize(int? fileSize) => _$this._fileSize = fileSize;

  String? _fileMimeType;
  String? get fileMimeType => _$this._fileMimeType;
  set fileMimeType(String? fileMimeType) => _$this._fileMimeType = fileMimeType;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GetDeliveryNotePhotoDTOBuilder() {
    GetDeliveryNotePhotoDTO._defaults(this);
  }

  GetDeliveryNotePhotoDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fileName = $v.fileName;
      _fileSize = $v.fileSize;
      _fileMimeType = $v.fileMimeType;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeliveryNotePhotoDTO other) {
    _$v = other as _$GetDeliveryNotePhotoDTO;
  }

  @override
  void update(void Function(GetDeliveryNotePhotoDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeliveryNotePhotoDTO build() => _build();

  _$GetDeliveryNotePhotoDTO _build() {
    final _$result = _$v ??
        _$GetDeliveryNotePhotoDTO._(
          id: id,
          fileName: fileName,
          fileSize: fileSize,
          fileMimeType: fileMimeType,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
