// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_log_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiagnosticLogDTO extends DiagnosticLogDTO {
  @override
  final String? message;
  @override
  final ModelSource? source_;
  @override
  final ApiType? type;
  @override
  final DateTime? dateTime;

  factory _$DiagnosticLogDTO(
          [void Function(DiagnosticLogDTOBuilder)? updates]) =>
      (DiagnosticLogDTOBuilder()..update(updates))._build();

  _$DiagnosticLogDTO._({this.message, this.source_, this.type, this.dateTime})
      : super._();
  @override
  DiagnosticLogDTO rebuild(void Function(DiagnosticLogDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiagnosticLogDTOBuilder toBuilder() =>
      DiagnosticLogDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiagnosticLogDTO &&
        message == other.message &&
        source_ == other.source_ &&
        type == other.type &&
        dateTime == other.dateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiagnosticLogDTO')
          ..add('message', message)
          ..add('source_', source_)
          ..add('type', type)
          ..add('dateTime', dateTime))
        .toString();
  }
}

class DiagnosticLogDTOBuilder
    implements Builder<DiagnosticLogDTO, DiagnosticLogDTOBuilder> {
  _$DiagnosticLogDTO? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModelSource? _source_;
  ModelSource? get source_ => _$this._source_;
  set source_(ModelSource? source_) => _$this._source_ = source_;

  ApiType? _type;
  ApiType? get type => _$this._type;
  set type(ApiType? type) => _$this._type = type;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DiagnosticLogDTOBuilder() {
    DiagnosticLogDTO._defaults(this);
  }

  DiagnosticLogDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _source_ = $v.source_;
      _type = $v.type;
      _dateTime = $v.dateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiagnosticLogDTO other) {
    _$v = other as _$DiagnosticLogDTO;
  }

  @override
  void update(void Function(DiagnosticLogDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiagnosticLogDTO build() => _build();

  _$DiagnosticLogDTO _build() {
    final _$result = _$v ??
        _$DiagnosticLogDTO._(
          message: message,
          source_: source_,
          type: type,
          dateTime: dateTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
