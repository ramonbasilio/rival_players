import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rival_players_demo/leading-page-menu.dart';

class pageSignUp extends StatefulWidget {
  const pageSignUp({Key? key}) : super(key: key);

  @override
  State<pageSignUp> createState() => _pageSignUpState();
}

final dropOpcoes = [
  'Xbox',
  'PSN',
  'Xbox and PSN',
];

String dropdownValue = dropOpcoes.first;

class _pageSignUpState extends State<pageSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
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
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          color: const Color.fromARGB(255, 191, 191, 191),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: Text(
                  'Player Registration Form',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.people),
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelText: 'Player Name',
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail_rounded),
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelText: 'E-mail',
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelText: 'Confirmation Password',
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),
              //Name
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.videogame_asset_outlined),
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black),
                        labelText: 'User Platform ',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                    value: dropdownValue,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(
                        () {
                          dropdownValue = value!;
                        },
                      );
                    },
                    items: dropOpcoes
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
              ),
              Column(
                children: [
                  if(dropdownValue == dropOpcoes[0])...{
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.videogame_asset_outlined),
                            labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                            labelText: 'ID - Xbox',
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                  },
                  if(dropdownValue == dropOpcoes[1])...{
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.videogame_asset_outlined),
                            labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                            labelText: 'ID - PSN',
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                  },
                  if(dropdownValue == dropOpcoes[2])...{
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black, fontSize: 20),
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.videogame_asset_outlined),
                                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                                labelText: 'ID - Xbox',
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black, fontSize: 20),
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.videogame_asset_outlined),
                                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                                labelText: 'ID - PSN',
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                          ),
                        )
                      ],
                    )
                  },
                ],
              ),
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
                    child: const Text('Save registration'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
