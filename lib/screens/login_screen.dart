import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("back"),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Username of email"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// userName
// email
// password
