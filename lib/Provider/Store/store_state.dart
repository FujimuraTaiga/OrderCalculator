import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Store/store.dart';

class StoreState extends StateNotifier<Store> {
  StoreState(Store state) : super(state);

  void adjustOrder() {
    Store store = state.adjustNumberOf12();
    state = state.copyWith(
      items: store.items,
      sales: store.sales,
    );
  }
}
