// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eet_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EETCode extends EETCode {
  @override
  final String? fik;
  @override
  final String? bkp;
  @override
  final String? pkp;

  factory _$EETCode([void Function(EETCodeBuilder)? updates]) =>
      (EETCodeBuilder()..update(updates))._build();

  _$EETCode._({this.fik, this.bkp, this.pkp}) : super._();
  @override
  EETCode rebuild(void Function(EETCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EETCodeBuilder toBuilder() => EETCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EETCode &&
        fik == other.fik &&
        bkp == other.bkp &&
        pkp == other.pkp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fik.hashCode);
    _$hash = $jc(_$hash, bkp.hashCode);
    _$hash = $jc(_$hash, pkp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EETCode')
          ..add('fik', fik)
          ..add('bkp', bkp)
          ..add('pkp', pkp))
        .toString();
  }
}

class EETCodeBuilder implements Builder<EETCode, EETCodeBuilder> {
  _$EETCode? _$v;

  String? _fik;
  String? get fik => _$this._fik;
  set fik(String? fik) => _$this._fik = fik;

  String? _bkp;
  String? get bkp => _$this._bkp;
  set bkp(String? bkp) => _$this._bkp = bkp;

  String? _pkp;
  String? get pkp => _$this._pkp;
  set pkp(String? pkp) => _$this._pkp = pkp;

  EETCodeBuilder() {
    EETCode._defaults(this);
  }

  EETCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fik = $v.fik;
      _bkp = $v.bkp;
      _pkp = $v.pkp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EETCode other) {
    _$v = other as _$EETCode;
  }

  @override
  void update(void Function(EETCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EETCode build() => _build();

  _$EETCode _build() {
    final _$result = _$v ??
        _$EETCode._(
          fik: fik,
          bkp: bkp,
          pkp: pkp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
