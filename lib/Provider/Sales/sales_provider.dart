import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Provider/Sales/sales_state.dart';

final todaySalesProvider = StateNotifierProvider<SalesState, Sales>(
  (ref) => SalesState(
    Sales(date: DateTime.now(), price: 0),
  ),
);

final tomorrowSalesProvider = StateNotifierProvider<SalesState, Sales>(
  (ref) => SalesState(
    Sales(
      date: DateTime.now().add(const Duration(days: 1)),
      price: 0,
    ),
  ),
);

final dayAfterSalesProvider = StateNotifierProvider<SalesState, Sales>(
  (ref) => SalesState(
    Sales(
      date: DateTime.now().add(const Duration(days: 2)),
      price: 0,
    ),
  ),
);
