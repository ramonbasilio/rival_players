import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rival_players_demo/checking-page-user.dart';
import 'package:rival_players_demo/login-page.dart';
import 'package:rival_players_demo/signup-page.dart';

class leadingPageMenu extends StatefulWidget {
  const leadingPageMenu({Key? key}) : super(key: key);

  @override
  State<leadingPageMenu> createState() => _leadingPageMenuState();
}

double topPadding = 10.0;
double bottomPadding = 10.0;
double rightPadding = 10.0;
double leftPadding = 10.0;

String nome = '';
String email = '';

class _leadingPageMenuState extends State<leadingPageMenu> {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    pegarUsuario();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
        //shadowColor: const Color.fromRGBO(38, 38, 38, 1),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'RIVAL  PLAYERS',
              style: GoogleFonts.acme(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.5,
            child: ListView(
              //padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text(nome,
                      style:
                          GoogleFonts.acme(fontSize: 25, color: Colors.black),
                    ),
                    accountEmail: Text(email,
                      style:
                          GoogleFonts.acme(fontSize: 15, color: Colors.black),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: 60.0,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID: drBasilioBR ',
                          style: GoogleFonts.acme(
                              fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          'Xbox Live ',
                          style: GoogleFonts.acme(
                              fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: topPadding,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    title: Text(
                      'Historic',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: topPadding,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    title: Text(
                      'Credit',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: topPadding,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    title: Text(
                      'Ranking',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: topPadding,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    title: Text(
                      'Options',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: topPadding,
                      right: rightPadding,
                      left: leftPadding,
                      bottom: bottomPadding),
                  child: ListTile(
                    onTap: () {
                     sair();
                    },
                    title: Text(
                      'Logout',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () async {
                    print('Apertou o botao');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageSignUp()));
                  },
                  child: Text(
                    'CREATE AN EVENT',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () async {
                    print('Apertou o botao');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageSignUp()));
                  },
                  child: Text(
                    'START A FIGHT',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () async {
                    print('Apertou o botao');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageSignUp()));
                  },
                  child: Text(
                    'SEARCH A PLAYER',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () async {
                    print('Apertou o botao');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageSignUp()));
                  },
                  child: Text(
                    'NOTIFICATIONS',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  onPressed: () async {
                    print('Apertou o botao');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
                  },
                  child: Text(
                    'HELP',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  sair() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => checkingPage(),
            ),
          ),
        );
  }

  pegarUsuario() async{
    User? usuario = await _firebaseAuth.currentUser;
    if(usuario != null){
      setState(() {
        nome = usuario.displayName!;
        email =  usuario.email!;
      });
    }
  }
}
