// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_notification_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppleNotificationDTO extends AppleNotificationDTO {
  @override
  final String? signedPayload;

  factory _$AppleNotificationDTO(
          [void Function(AppleNotificationDTOBuilder)? updates]) =>
      (AppleNotificationDTOBuilder()..update(updates))._build();

  _$AppleNotificationDTO._({this.signedPayload}) : super._();
  @override
  AppleNotificationDTO rebuild(
          void Function(AppleNotificationDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppleNotificationDTOBuilder toBuilder() =>
      AppleNotificationDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppleNotificationDTO &&
        signedPayload == other.signedPayload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signedPayload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppleNotificationDTO')
          ..add('signedPayload', signedPayload))
        .toString();
  }
}

class AppleNotificationDTOBuilder
    implements Builder<AppleNotificationDTO, AppleNotificationDTOBuilder> {
  _$AppleNotificationDTO? _$v;

  String? _signedPayload;
  String? get signedPayload => _$this._signedPayload;
  set signedPayload(String? signedPayload) =>
      _$this._signedPayload = signedPayload;

  AppleNotificationDTOBuilder() {
    AppleNotificationDTO._defaults(this);
  }

  AppleNotificationDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedPayload = $v.signedPayload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppleNotificationDTO other) {
    _$v = other as _$AppleNotificationDTO;
  }

  @override
  void update(void Function(AppleNotificationDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppleNotificationDTO build() => _build();

  _$AppleNotificationDTO _build() {
    final _$result = _$v ??
        _$AppleNotificationDTO._(
          signedPayload: signedPayload,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
