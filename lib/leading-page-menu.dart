import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rival_players_demo/login-page.dart';
import 'package:rival_players_demo/signup-page.dart';

class leadingPageMenu extends StatefulWidget {
  const leadingPageMenu({Key? key}) : super(key: key);

  @override
  State<leadingPageMenu> createState() => _leadingPageMenuState();
}

double topPadding = 35.0;
double bottomPadding = 35.0;
double rightPadding = 10.0;
double leftPadding = 10.0;

class _leadingPageMenuState extends State<leadingPageMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
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
      drawer: Padding(
        padding: const EdgeInsets.only(top: 56.0),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.5,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text(
                    'Ramon Basilio',
                    style: GoogleFonts.acme(fontSize: 25, color: Colors.black),
                  ),
                  accountEmail: Text(
                    'ramon.basilio@hotmail.com',
                    style: GoogleFonts.acme(fontSize: 15, color: Colors.black),
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
                        style:
                            GoogleFonts.acme(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        'Xbox Live ',
                        style:
                            GoogleFonts.acme(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(
                  top: topPadding,
                  right: rightPadding,
                  left: leftPadding,
                  bottom: bottomPadding),
                child: ListTile(
                  title: Text(
                    'Historic',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.black),
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
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.black),
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
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.black),
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
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.black),
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
                  onTap: (){
                    Navigator.pop(context);
                  },
                  title: Text(
                    'Logout',
                    style: GoogleFonts.acme(fontSize: 24, color: Colors.black),
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
