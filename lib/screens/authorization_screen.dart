import 'package:flutter/material.dart';
import 'package:samesoulz/screens/login_screen.dart';

import 'package:samesoulz/screens/screens.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/registration');
              },
              child: Text('registration'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}
