import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Model/Item/item.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const Store._();
  const factory Store({
    required List<Item> items,
    required List<Sales> sales,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  int sumNeeds() {
    int total = 0;
    for (final item in items) {
      total += item.stock.dayAfter;
    }
    return total;
  }

  Store adjustNumberOf12() {
    final need = sumNeeds();
    int gap = (need % 12);
    int count = (gap == 0) ? 0 : 12 - gap;
    List<Item> _items = [];
    _items.addAll(items);
    for (int i = 0; i < count; i++) {
      _items.sort((a, b) => a.stockValue.compareTo(b.stockValue));
      _items.first = _items.first.copyWith(
        stock: _items.first.stock.incrementOrder(),
      );
    }
    return Store(items: _items, sales: sales);
  }
}
