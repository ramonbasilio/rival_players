import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rival_players_demo/checking-page-user.dart';
import 'package:rival_players_demo/firebase_options.dart';
import 'package:rival_players_demo/leading-page-menu.dart';
import 'package:rival_players_demo/leading-page.dart';
import 'package:rival_players_demo/login-page.dart';
import 'package:rival_players_demo/signup-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/': (context) => const checkingPage(),
        '/loginPage': (context) => const loginPage(),
        '/pageSignUp': (context) => const pageSignUp(),
        '/leadingPage': (context) => const leadingPageMenu(),
      },
    );
  }
}
