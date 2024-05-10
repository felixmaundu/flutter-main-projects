import 'package:flutter/material.dart';

import 'screens/LoginPage.dart';
import 'screens/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(),
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        // '/': (context) => _defaultHome,
        // '/home': (context) => const HomePage(),
        // '/login': (context) =>  LoginPage(),
        // '/register': (context) =>  RegisterPage(),
      },
    );
  }
}
