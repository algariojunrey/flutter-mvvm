import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/auth/login.dart';
import 'package:flutter_mvvm/view/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './view_model/login_notifier.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: loginState.isLoggedIn ? const Home() : const Login(),
    );
  }
}
