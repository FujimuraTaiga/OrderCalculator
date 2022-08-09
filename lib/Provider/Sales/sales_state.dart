import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/DailySales/daily_sales.dart';

class SalesState extends StateNotifier<DailySales> {
  SalesState(this.sales) : super(sales);

  final DailySales sales;

  void changePrice(int price) {
    state = state.copyWith(
      date: state.date,
      price: price,
    );
  }
}
