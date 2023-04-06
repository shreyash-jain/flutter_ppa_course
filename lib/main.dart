import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
              child: OutlinedButton(
                  child: Text("My Button"),
                  onPressed: onClickAction,
                ),
            )));
  }

  void onClickAction() {
    print("I clicked the button");
  }
}
