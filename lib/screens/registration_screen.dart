import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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
                    decoration: InputDecoration(hintText: 'First name'),
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "First name can't be empty";
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Last name'),
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "Last name can't be empty";
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Username'),
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "Username can't be empty";
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (value) {
                      if (value != null && value.trim().isEmpty)
                        return "email can't be empty";
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Password'),
                    obscureText: true,
                    validator: (value) {
                      if (value != null && value.trim().isEmpty) {
                        return "Password required";
                      }
                      if (value != null && value.length < 8) {
                        return "Password needs to be at least 8 char";
                      }
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print('The form is valid');
                      }
                    },
                    child: Text('Submit'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
