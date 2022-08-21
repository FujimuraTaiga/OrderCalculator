import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Provider/Order/order_state.dart';
import 'package:order_support/Model/Order/order.dart';

final orderProvider = StateNotifierProvider<OrderState, Order>(
  (ref) => OrderState(
    Order(
      pork: ref.watch(porkProvider),
      beef: ref.watch(beefProvider),
      chicken: ref.watch(chickenProvider),
    ),
  ),
);
