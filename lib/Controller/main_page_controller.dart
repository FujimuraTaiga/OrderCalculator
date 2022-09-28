import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Firestore/sales_firestore.dart';

part 'main_page_controller.freezed.dart';
part 'main_page_controller.g.dart';

@freezed
class MainPageController with _$MainPageController {
  const MainPageController._();
  const factory MainPageController({
    required List<String> salesIds,
    required List<String> itemIds,
  }) = _MainPageController;

  factory MainPageController.fromJson(Map<String, dynamic> json) =>
      _$MainPageControllerFromJson(json);
}

class MainPageControllerState extends StateNotifier<MainPageController> {
  MainPageControllerState(MainPageController state) : super(state) {
    _init();
  }

  void _init() {
    fetchData();
  }

  Future<void> fetchData() async {
    final sales = await SalesFireStore().readSalesList();
    final items = await ItemFireStore().readItems();

    state = state.copyWith(
      salesIds: sales.map((sales) => sales.id).toList(),
      itemIds: items.map((item) => item.id).toList(),
    );
  }
}

final mainPageProvider =
    StateNotifierProvider<MainPageControllerState, MainPageController>((ref) {
  return MainPageControllerState(
    const MainPageController(
      salesIds: <String>[],
      itemIds: <String>[],
    ),
  );
});
