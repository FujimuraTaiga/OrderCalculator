import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/supplier_firestore.dart';

import 'package:order_support/Model/Supplier/supplier.dart';
import 'package:order_support/Model/Supplier/supplier_list.dart';

class SupplierTabController extends StateNotifier<SupplierList> {
  SupplierTabController(SupplierList suppliers) : super(suppliers) {
    fetch();
  }

  Future<void> fetch() async {
    final suppliers = await SupplierFirestore.findAll();
    state = state.copyWith(suppliers: suppliers);
  }

  void createNewSupplier(Supplier supplier) async {
    SupplierFirestore.create(supplier);
  }

  Future<void> deleteSupplier(String supplierId) async {
    await SupplierFirestore.delete(supplierId);
    state = state.delete(supplierId);
  }
}

final supplierTabProvider =
    StateNotifierProvider<SupplierTabController, SupplierList>((ref) {
  return SupplierTabController(SupplierList([]));
});
