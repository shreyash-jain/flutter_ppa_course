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
              child: Container(
                color: Colors.yellow,
                margin: EdgeInsets.only(left: 10),
                child: Text("Hello world"),
                height: 100,
                width: 100,
                alignment: FractionalOffset(0.5,0.5),
              )
            )));
  }

  void onClickAction() {
    print("I clicked the button");
  }
}
