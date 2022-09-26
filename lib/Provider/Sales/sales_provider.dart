import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Firestore/sales_firestore.dart';

part 'sales_provider.freezed.dart';

@freezed
class SalesState with _$SalesState {
  const SalesState._();
  const factory SalesState({
    required Sales sales,
  }) = _SalesState;
}

class SalesController extends StateNotifier<SalesState> {
  SalesController({required this.salesId})
      : super(
          SalesState(
            sales: Sales(
              id: salesId,
              date: DateTime.now(),
              price: 0,
            ),
          ),
        ) {
    _init();
  }

  final String salesId;

  void _init() {
    fetchSalesData();
  }

  Future<void> fetchSalesData() async {
    final sales = await SalesFireStore().readSales(salesId);
    state = state.copyWith(
      sales: sales,
    );
  }

  void changeSales(int newPrice) {
    state = state.copyWith(
      sales: state.sales.changePrice(newPrice),
    );
  }
}

final salesProviderFamily =
    StateNotifierProvider.family<SalesController, SalesState, String>(
        (ref, id) => SalesController(salesId: id));
