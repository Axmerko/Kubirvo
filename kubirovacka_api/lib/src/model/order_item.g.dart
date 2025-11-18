// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderItem extends OrderItem {
  @override
  final String? name;
  @override
  final int? amount;
  @override
  final int? count;
  @override
  final int? vatRate;
  @override
  final ItemType? itemType;
  @override
  final String? productURL;
  @override
  final String? ean;

  factory _$OrderItem([void Function(OrderItemBuilder)? updates]) =>
      (OrderItemBuilder()..update(updates))._build();

  _$OrderItem._(
      {this.name,
      this.amount,
      this.count,
      this.vatRate,
      this.itemType,
      this.productURL,
      this.ean})
      : super._();
  @override
  OrderItem rebuild(void Function(OrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderItemBuilder toBuilder() => OrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
        name == other.name &&
        amount == other.amount &&
        count == other.count &&
        vatRate == other.vatRate &&
        itemType == other.itemType &&
        productURL == other.productURL &&
        ean == other.ean;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, vatRate.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, productURL.hashCode);
    _$hash = $jc(_$hash, ean.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderItem')
          ..add('name', name)
          ..add('amount', amount)
          ..add('count', count)
          ..add('vatRate', vatRate)
          ..add('itemType', itemType)
          ..add('productURL', productURL)
          ..add('ean', ean))
        .toString();
  }
}

class OrderItemBuilder implements Builder<OrderItem, OrderItemBuilder> {
  _$OrderItem? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _vatRate;
  int? get vatRate => _$this._vatRate;
  set vatRate(int? vatRate) => _$this._vatRate = vatRate;

  ItemType? _itemType;
  ItemType? get itemType => _$this._itemType;
  set itemType(ItemType? itemType) => _$this._itemType = itemType;

  String? _productURL;
  String? get productURL => _$this._productURL;
  set productURL(String? productURL) => _$this._productURL = productURL;

  String? _ean;
  String? get ean => _$this._ean;
  set ean(String? ean) => _$this._ean = ean;

  OrderItemBuilder() {
    OrderItem._defaults(this);
  }

  OrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _amount = $v.amount;
      _count = $v.count;
      _vatRate = $v.vatRate;
      _itemType = $v.itemType;
      _productURL = $v.productURL;
      _ean = $v.ean;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderItem other) {
    _$v = other as _$OrderItem;
  }

  @override
  void update(void Function(OrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderItem build() => _build();

  _$OrderItem _build() {
    final _$result = _$v ??
        _$OrderItem._(
          name: name,
          amount: amount,
          count: count,
          vatRate: vatRate,
          itemType: itemType,
          productURL: productURL,
          ean: ean,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
