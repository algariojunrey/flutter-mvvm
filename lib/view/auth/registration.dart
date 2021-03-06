import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home.dart';
import '../widgets/logo.dart';

class Registration extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Logo("ロゴ画像"),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "新規登録はこちら",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    const Text(
                        "メールアドレスを入力してください。入力して頂いたメールアドレスに、パスワードをお送りします。"),
                    const SizedBox(height: 18.0),
                    const Text("パスワードを変更する場合はアプリの設定画面から進めることができます。"),
                    const SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        SizedBox(
                          width: 140.0,
                          child: Text(
                            "メールアドレス",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "example@example.com",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            "ログイン画面に戻る",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      child: const Text("送信する"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
