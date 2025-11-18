// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryNotePhoto extends DeliveryNotePhoto {
  @override
  final String? id;
  @override
  final String? fileName;
  @override
  final int? fileSize;
  @override
  final String? fileMimeType;
  @override
  final String? deliveryNoteId;
  @override
  final DeliveryNote? deliveryNote;

  factory _$DeliveryNotePhoto(
          [void Function(DeliveryNotePhotoBuilder)? updates]) =>
      (DeliveryNotePhotoBuilder()..update(updates))._build();

  _$DeliveryNotePhoto._(
      {this.id,
      this.fileName,
      this.fileSize,
      this.fileMimeType,
      this.deliveryNoteId,
      this.deliveryNote})
      : super._();
  @override
  DeliveryNotePhoto rebuild(void Function(DeliveryNotePhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryNotePhotoBuilder toBuilder() =>
      DeliveryNotePhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryNotePhoto &&
        id == other.id &&
        fileName == other.fileName &&
        fileSize == other.fileSize &&
        fileMimeType == other.fileMimeType &&
        deliveryNoteId == other.deliveryNoteId &&
        deliveryNote == other.deliveryNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, fileSize.hashCode);
    _$hash = $jc(_$hash, fileMimeType.hashCode);
    _$hash = $jc(_$hash, deliveryNoteId.hashCode);
    _$hash = $jc(_$hash, deliveryNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryNotePhoto')
          ..add('id', id)
          ..add('fileName', fileName)
          ..add('fileSize', fileSize)
          ..add('fileMimeType', fileMimeType)
          ..add('deliveryNoteId', deliveryNoteId)
          ..add('deliveryNote', deliveryNote))
        .toString();
  }
}

class DeliveryNotePhotoBuilder
    implements Builder<DeliveryNotePhoto, DeliveryNotePhotoBuilder> {
  _$DeliveryNotePhoto? _$v;

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

  String? _deliveryNoteId;
  String? get deliveryNoteId => _$this._deliveryNoteId;
  set deliveryNoteId(String? deliveryNoteId) =>
      _$this._deliveryNoteId = deliveryNoteId;

  DeliveryNoteBuilder? _deliveryNote;
  DeliveryNoteBuilder get deliveryNote =>
      _$this._deliveryNote ??= DeliveryNoteBuilder();
  set deliveryNote(DeliveryNoteBuilder? deliveryNote) =>
      _$this._deliveryNote = deliveryNote;

  DeliveryNotePhotoBuilder() {
    DeliveryNotePhoto._defaults(this);
  }

  DeliveryNotePhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fileName = $v.fileName;
      _fileSize = $v.fileSize;
      _fileMimeType = $v.fileMimeType;
      _deliveryNoteId = $v.deliveryNoteId;
      _deliveryNote = $v.deliveryNote?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryNotePhoto other) {
    _$v = other as _$DeliveryNotePhoto;
  }

  @override
  void update(void Function(DeliveryNotePhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryNotePhoto build() => _build();

  _$DeliveryNotePhoto _build() {
    _$DeliveryNotePhoto _$result;
    try {
      _$result = _$v ??
          _$DeliveryNotePhoto._(
            id: id,
            fileName: fileName,
            fileSize: fileSize,
            fileMimeType: fileMimeType,
            deliveryNoteId: deliveryNoteId,
            deliveryNote: _deliveryNote?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryNote';
        _deliveryNote?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryNotePhoto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
