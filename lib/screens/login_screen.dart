import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Username of email"),
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "This field can't be empty";
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "Password can't be empty";
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print('The form is valid');
                      }
                    },
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
