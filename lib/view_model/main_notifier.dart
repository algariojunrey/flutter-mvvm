import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  MainNotifier() : super(const MainState());
}

final mainProvider = StateNotifierProvider.autoDispose<MainNotifier, MainState>(
  (ref) => MainNotifier(),
);
