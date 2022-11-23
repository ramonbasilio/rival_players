import 'package:flutter/material.dart';
import 'package:rival_players_demo/leading-page-menu.dart';
import 'package:rival_players_demo/signup-page.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

String login = '';
String password = '';

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            //height: 789,
            color: const Color.fromARGB(255, 191, 191, 191),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: ClipRRect(
                      child: Image.asset('assets/img/logo_rival_players.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'E-mail',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                              });;
                            },
                          ),
                        ), // EMAIL
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                        ), // PASSWORD
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot password?",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ), //FORGOT PASSWORD
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: 320,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 40, 0, 77),
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => leadingPageMenu()));
                              },
                              child: Text('Login'),
                            ),
                          ),
                        ), //LOGIN
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 130.0, bottom: 9.0),
                          child: SizedBox(
                            width: 320,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 40, 0, 77),
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.black),
                              ),
                              onPressed: () async {
                                print('Apertou o botao');
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pageSignUp()));
                              },
                              child: Text('Sign-up now!'),
                            ),
                          ),
                        ), //SIGN-UP
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
