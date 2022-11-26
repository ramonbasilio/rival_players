import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rival_players_demo/leading-page-menu.dart';
import 'package:rival_players_demo/login-page.dart';
import 'package:rival_players_demo/signup-page.dart';

class checkingPage extends StatefulWidget {
  const checkingPage({Key? key}) : super(key: key);

  @override
  State<checkingPage> createState() => _checkingPageState();
}

class _checkingPageState extends State<checkingPage> {
  StreamSubscription? streamSubscription;


  @override
  void initState() {
    super.initState();
    streamSubscription = FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginPage()));
        print('User is currently signed out!');
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => leadingPageMenu()));
        print('User is signed in!');
      }
    });
  }

  @override
  void dispose(){
    streamSubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
