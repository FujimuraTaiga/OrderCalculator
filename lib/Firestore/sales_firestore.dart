import 'package:cloud_firestore/cloud_firestore.dart';

import '../Model/Sales/sales.dart';

class SalesFireStore {
  final fireStore = FirebaseFirestore.instance;

  Future<void> updateSales(Sales sales) async {
    await fireStore.collection('sales').doc(sales.id).update({
      'id': sales.id,
      'date': Timestamp.fromDate(sales.date),
      'price': sales.price,
    });
  }

  Future<Sales> readSales(String salesId) async {
    final snapshot = await fireStore.collection('sales').doc(salesId).get();
    return Sales.fromJson(snapshot.data()!);
  }

  Future<List<Sales>> readSalesList() async {
    final snapshot =
        await fireStore.collection('sales').orderBy('date').limit(3).get();
    return snapshot.docs.map((sales) => Sales.fromJson(sales.data())).toList();
  }

  Future<int> totalSalesForThreeDays() async {
    final salesList = await readSalesList();
    int total = 0;
    salesList.map((sales) => total += sales.price);
    return total;
  }
}
