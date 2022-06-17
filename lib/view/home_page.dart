import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/home_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final String title1 = "HAHHAHAHA";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final homeNotifier = ref.watch(homeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(title1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              homeState.title,
            ),
            Text(
              "${homeState.count}",
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
              child: ElevatedButton(
                child: const Text("Minus"),
                onPressed: () {
                  homeNotifier.decreaseCount();
                },
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: const Text("Plus"),
                onPressed: () {
                  homeNotifier.increaseCount();
                },
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: const Text("Change Title"),
                onPressed: () {
                  homeNotifier.changeTitle("HALA");
                  // title = "HUHUHUHU";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
