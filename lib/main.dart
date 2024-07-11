import 'package:example_inheritaned/inherited/state_controller.dart';
import 'package:example_inheritaned/models/user_model.dart';
import 'package:example_inheritaned/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StateController(
    user: User(
        name: "Nimes Kaninda",
        email: " Kavindakw96@gmail.com",
        password: "123456789"),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
