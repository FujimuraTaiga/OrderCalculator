import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/sales_firestore.dart';

import 'package:order_support/Model/Sales/sales_list.dart';

class SalesListProperties {
  final SalesList salesList;

  SalesListProperties({required this.salesList});

  SalesListProperties copyWith({required SalesList? salesList}) {
    return SalesListProperties(salesList: salesList ?? SalesList.dummy());
  }
}

class SalesListProvider extends StateNotifier<SalesListProperties> {
  SalesListProvider({required SalesListProperties props}) : super(props) {
    fetch();
  }

  void fetch() async {
    final salesList = await SalesFireStore.findAll();
    state = state.copyWith(salesList: salesList);
  }
}

final salesListProvider =
    StateNotifierProvider<SalesListProvider, SalesListProperties>(
  (ref) => SalesListProvider(
    props: SalesListProperties(salesList: SalesList.dummy()),
  ),
);
