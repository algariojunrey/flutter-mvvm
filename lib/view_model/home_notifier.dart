import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState(count: 0, title: "sd"));

  void increaseCount() async {
    state = state.copyWith(count: state.count + 1);
  }

  void decreaseCount() async {
    state = state.copyWith(count: state.count - 1);
  }

  void changeTitle(String title) async {
    state = state.copyWith(title: title);
  }
}

final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(),
);
