import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';

part 'order_page_controller.freezed.dart';

@freezed
class OrderPageState with _$OrderPageState {
  const factory OrderPageState({
    required Sales todaySales,
    required Sales tomorrowSales,
    required Sales dayAfterSales,
    required Item pork,
    required Item beef,
    required Item chicken,
  }) = _OrderPageState;
}

class OrderPageStateController extends StateNotifier<OrderPageState> {
  OrderPageStateController(OrderPageState state) : super(state);

  void adjustOrder() {}
}

final orderPageController =
    StateNotifierProvider.autoDispose<OrderPageStateController, OrderPageState>(
  (ref) => OrderPageStateController(
    OrderPageState(
      todaySales: ref.watch(todaySalesProvider),
      tomorrowSales: ref.watch(tomorrowSalesProvider),
      dayAfterSales: ref.watch(dayAfterSalesProvider),
      pork: ref.watch(porkProvider),
      beef: ref.watch(beefProvider),
      chicken: ref.watch(chickenProvider),
    ),
  ),
);
