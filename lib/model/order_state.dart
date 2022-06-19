import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/order.dart';

part 'freezed/order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    @Default(List<Order>) orders,
    @Default(List<String>) products,
    @Default(false) loading,
  }) = _OrderState;
}
