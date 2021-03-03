import 'package:flutter/material.dart';

import 'login.dart';
import 'home.dart';
import 'register.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/register': (context) => Register()
      },
    ),
  );
}