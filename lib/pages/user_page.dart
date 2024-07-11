import 'package:example_inheritaned/inherited/state_controller.dart';
import 'package:example_inheritaned/models/user_model.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Text("User name is : ${user.name} and email is : ${user.email}"),
      ),
    );
  }
}
