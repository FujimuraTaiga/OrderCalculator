import 'package:cloud_firestore/cloud_firestore.dart';

import '../Model/Item/item.dart';
import '../Model/Order/order.dart';

class OrderFireStore {
  final fireStore = FirebaseFirestore.instance;

  void createOrder(Item item) async {
    final orderId =
        fireStore.collection('order').doc(item.id).collection('_').doc().id;
    fireStore
        .collection('order')
        .doc(item.id)
        .collection('_')
        .doc(orderId)
        .set({
      'id': orderId,
      'date': DateTime.now(),
      'amount': item.todayOrderAmount,
    });
  }

  void updateOrder(String itemId, Order order) async {
    fireStore
        .collection('order')
        .doc(itemId)
        .collection('_')
        .doc(order.id)
        .update({
      'id': order.id,
      'date': order.date,
      'amount': order.amount,
    });
  }

  Future<void> writeOrder(Item item) async {
    if (await existTodayOrder(item.id)) {
      final order = await readOrderByDate(item.id, DateTime.now());
      updateOrder(
        item.id,
        Order(
          id: order!.id,
          date: order.date,
          amount: item.todayOrderAmount,
        ),
      );
    } else {
      createOrder(item);
    }
  }

  Future<List<Order>> readOrders(String itemId) async {
    final snapshot = await fireStore
        .collection('order')
        .doc(itemId)
        .collection('_')
        .orderBy('date', descending: true)
        .get();
    return snapshot.docs.map((order) => Order.fromJson(order.data())).toList();
  }

  Future<Order?> readOrderByDate(String itemId, DateTime dateTime) async {
    final snapshot = await fireStore
        .collection('order')
        .doc(itemId)
        .collection('_')
        .orderBy('date')
        .endAt([Timestamp.fromDate(dateTime)]).get();

    if (snapshot.docs.isNotEmpty && await existTodayOrder(itemId)) {
      final json = snapshot.docs.first.data();
      return Order.fromJson(json);
    }

    return null;
  }

  Future<bool> existTodayOrder(String itemId) async {
    final orders = await readOrders(itemId);

    if (orders.isNotEmpty) {
      final recentOrderDate = orders.first.date;
      final today = DateTime.now();
      return recentOrderDate.year == today.year &&
          recentOrderDate.month == today.month &&
          recentOrderDate.day == today.day;
    }

    return false;
  }

  Future<Order?> orderedToday(String itemId) async {
    if (await existTodayOrder(itemId)) {
      final orders = await readOrders(itemId);
      if (1 < orders.length) {
        return orders[0];
      }
      return null;
    } else {
      return null;
    }
  }

  Future<Order?> orderedYesterday(String itemId) async {
    if (await existTodayOrder(itemId)) {
      final orders = await readOrders(itemId);
      if (2 < orders.length) {
        return orders[1];
      }
      return null;
    } else {
      return null;
    }
  }
}
