// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_pay_payment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoPayPaymentDTO extends GoPayPaymentDTO {
  @override
  final String? gwUrl;

  factory _$GoPayPaymentDTO([void Function(GoPayPaymentDTOBuilder)? updates]) =>
      (GoPayPaymentDTOBuilder()..update(updates))._build();

  _$GoPayPaymentDTO._({this.gwUrl}) : super._();
  @override
  GoPayPaymentDTO rebuild(void Function(GoPayPaymentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoPayPaymentDTOBuilder toBuilder() => GoPayPaymentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoPayPaymentDTO && gwUrl == other.gwUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gwUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoPayPaymentDTO')
          ..add('gwUrl', gwUrl))
        .toString();
  }
}

class GoPayPaymentDTOBuilder
    implements Builder<GoPayPaymentDTO, GoPayPaymentDTOBuilder> {
  _$GoPayPaymentDTO? _$v;

  String? _gwUrl;
  String? get gwUrl => _$this._gwUrl;
  set gwUrl(String? gwUrl) => _$this._gwUrl = gwUrl;

  GoPayPaymentDTOBuilder() {
    GoPayPaymentDTO._defaults(this);
  }

  GoPayPaymentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gwUrl = $v.gwUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoPayPaymentDTO other) {
    _$v = other as _$GoPayPaymentDTO;
  }

  @override
  void update(void Function(GoPayPaymentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoPayPaymentDTO build() => _build();

  _$GoPayPaymentDTO _build() {
    final _$result = _$v ??
        _$GoPayPaymentDTO._(
          gwUrl: gwUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
