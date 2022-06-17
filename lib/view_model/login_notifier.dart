import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/login_state.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(const LoginState());

  void login(String username, String password) async {
    state = state.copyWith(loading: true);
    // Fake login
    Future.delayed(const Duration(seconds: 5), () {
      final loginSuccess =
          (username == 'admin@gmail.com' && password == 'pass');
      state = state.copyWith(
        loading: false,
        isLoggedIn: loginSuccess,
      );
    });
  }
}

final loginProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);
