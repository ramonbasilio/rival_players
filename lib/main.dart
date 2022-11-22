import 'package:flutter/material.dart';
import 'package:rival_players_demo/leading-page-menu.dart';
import 'package:rival_players_demo/leading-page.dart';
import 'package:rival_players_demo/login-page.dart';
import 'package:rival_players_demo/signup-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/': (context) => const loginPage(),
        '/signupPage': (context) => const pageSignUp(),
        '/leadingPage': (context) => const leadingPage(),
      },
    );
  }
}
