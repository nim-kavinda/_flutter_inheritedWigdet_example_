import 'package:example_inheritaned/inherited/state_controller.dart';
import 'package:flutter/material.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({super.key});

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  String userName = '';
  String userEmail = '';
  String userPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  userPassword = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  StateController.of(context).updateUser(
                    name: userName,
                    email: userEmail,
                    password: userPassword,
                  );
                  Navigator.pop(context);
                },
                child: const Text("Add User"))
          ],
        ),
      ),
    );
  }
}
