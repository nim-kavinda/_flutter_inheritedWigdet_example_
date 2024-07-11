import 'package:example_inheritaned/inherited/state_controller.dart';
import 'package:example_inheritaned/models/user_model.dart';
import 'package:example_inheritaned/pages/add_new_user.dart';
import 'package:example_inheritaned/pages/user_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // get the data from inheitedWidget
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : ${user.name}"),
            SizedBox(
              height: 10,
            ),
            Text("Email : ${user.email}"),
            SizedBox(
              height: 10,
            ),
            Text("Password : ${user.password}"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //go to add new user page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddNewUser(),
                    ));
              },
              child: Text("Add new User"),
            ),
            ElevatedButton(
              onPressed: () {
                //go to add new user page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserPage(),
                    ));
              },
              child: Text("User Page"),
            )
          ],
        ),
      ),
    );
  }
}
