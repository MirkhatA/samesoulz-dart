import 'package:flutter/material.dart';

import 'package:samesoulz/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: AuthorizationScreen(),
        ),
      ),
      routes: {
        '/registration': (_) => RegistrationScreen(),
        '/login': (_) => LoginScreen(),
        '/authorization': (_) => AuthorizationScreen(),
      },
    );
  }
}
