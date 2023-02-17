import 'package:order_support/Firestore/supplier_firestore.dart';
import 'package:order_support/Model/Supplier/supplier.dart';

class SupplierList {
  List<Supplier> suppliers;

  SupplierList(this.suppliers);

  SupplierList copyWith({List<Supplier>? suppliers}) {
    return SupplierList(suppliers ?? []);
  }

  SupplierList delete(String supplierId) {
    final List<Supplier> supplierList = [];
    for (final supplier in suppliers) {
      if (supplier.id == supplierId) continue;
      supplierList.add(supplier);
    }
    return SupplierList(supplierList);
  }
}
