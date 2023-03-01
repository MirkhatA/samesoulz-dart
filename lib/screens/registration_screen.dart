import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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
                    decoration: InputDecoration(hintText: 'First name'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Last name'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Username'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Password'),
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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

