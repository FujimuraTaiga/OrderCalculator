import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/DailySales/daily_sales.dart';
import 'package:order_support/Provider/Sales/sales_state.dart';

final todaySalesProvider = StateNotifierProvider<SalesState, DailySales>(
  (ref) => SalesState(
    DailySales(date: DateTime.now(), price: 0),
  ),
);

final tomorrowSalesProvider = StateNotifierProvider<SalesState, DailySales>(
  (ref) => SalesState(
    DailySales(
      date: DateTime.now().add(const Duration(days: 1)),
      price: 0,
    ),
  ),
);

final dayAfterSalesProvider = StateNotifierProvider<SalesState, DailySales>(
  (ref) => SalesState(
    DailySales(
      date: DateTime.now().add(const Duration(days: 2)),
      price: 0,
    ),
  ),
);
