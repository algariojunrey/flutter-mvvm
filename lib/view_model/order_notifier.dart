import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/order.dart';
import '../model/order_state.dart';

class OrderNotifier extends StateNotifier<OrderState> {
  OrderNotifier() : super(const OrderState());

  Future getOrders() async {
    state = state.copyWith(loading: true);
    state = state.copyWith(products: ["えび", "たまご麺", "たまご", "豚肉", "豚背骨", "メンマ"]);
    List<Order> orders = [];
    orders.add(Order(
        name: "えび",
        quantity: 10,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    orders.add(Order(
        name: "たまご麺",
        quantity: 2,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    orders.add(Order(
        name: "たまご",
        quantity: 1,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    orders.add(Order(
        name: "豚肉",
        quantity: 20,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    orders.add(Order(
        name: "豚背骨",
        quantity: 20,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    orders.add(Order(
        name: "メンマ",
        quantity: 1,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: state.products));
    state.copyWith(orders: orders);
    // Fake api calls delay
    Future.delayed(const Duration(seconds: 5), () {
      state = state.copyWith(loading: false);
    });
  }
}

final orderProvider =
    StateNotifierProvider.autoDispose<OrderNotifier, OrderState>(
  (ref) => OrderNotifier(),
);
