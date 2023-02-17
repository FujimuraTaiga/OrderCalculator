import 'sales.dart';

class SalesList {
  final List<Sales> _salesList;

  SalesList(this._salesList);
  factory SalesList.dummy() => SalesList([]);

  List<Sales> get getAll => _salesList;
  List<String> get ids => _salesList.map((sales) => sales.id).toList();

  Sales findById(String id) {
    for (final sales in _salesList) {
      if (id == sales.id) return sales;
    }
    throw Exception("Sales not found");
  }
}
