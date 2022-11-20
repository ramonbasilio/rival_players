import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class leadingPage extends StatefulWidget {
  const leadingPage({Key? key}) : super(key: key);

  @override
  State<leadingPage> createState() => _leadingPageState();
}

class _leadingPageState extends State<leadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
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
      body: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 191, 191, 191),
            width: MediaQuery.of(context).size.width * 0.33,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Ramon Basilio',
                      style:
                          GoogleFonts.acme(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ID: drBasilioBR ',
                          style: GoogleFonts.acme(
                              fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          'Xbox Live ',
                          style: GoogleFonts.acme(
                              fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Historic',
                      style:
                          GoogleFonts.acme(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Credit',
                      style:
                          GoogleFonts.acme(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Ranking',
                      style:
                          GoogleFonts.acme(fontSize: 15, color: Colors.black),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Options',
                      style: GoogleFonts.acme(
                          fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Logout',
                      style: GoogleFonts.acme(
                          fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.66,
              height: MediaQuery.of(context).size.height,)
        ],
      ),
    );
  }
}
