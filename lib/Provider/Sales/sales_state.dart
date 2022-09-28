import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Sales/sales.dart';

class SalesState extends StateNotifier<Sales> {
  SalesState(Sales state) : super(state);

  void changePrice(int price) {
    state = state.copyWith(
      date: state.date,
      price: price,
    );
  }
}
