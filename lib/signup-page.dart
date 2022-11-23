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
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isHiddenConfirmationPassword = true;

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  bool valueValitador(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  bool validateStructure(String value){
      String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
      RegExp regExp = RegExp(pattern);
      return regExp.hasMatch(value);
  }

  void _togglePasswordView(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordViewConfirmationPassword(){
    setState(() {
      _isHiddenConfirmationPassword = !_isHiddenConfirmationPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 191, 191, 191),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                  child: Text(
                    'Player Registration Form',
                    style: GoogleFonts.acme(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                  child: TextFormField(
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira um nome';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black),
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
                    validator: (String? value) {
                      if (value == null ||
                          !(value.contains('@') && value.contains('.com'))) {
                        return 'Insira um email valido';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_rounded),
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black),
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
                    controller: passwordController,
                    validator: (String? valuePassword){
                      if(validateStructure(valuePassword!)){
                        return null;
                        }
                      return 'Insira uma senha';
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: _isHidden,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(_isHidden ? Icons.visibility : Icons.visibility_off),
                          onPressed: _togglePasswordView,
                        ),
                        prefixIcon: const Icon(Icons.password),
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        labelText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                  child: TextFormField(
                    validator: (String? value){
                      if(validateStructure(value!)){
                        return null;
                      }
                      return 'Insira uma senha';
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: _isHiddenConfirmationPassword,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(_isHiddenConfirmationPassword ? Icons.visibility : Icons.visibility_off),
                          onPressed: _togglePasswordViewConfirmationPassword,
                        ),
                        prefixIcon: const Icon(Icons.password),
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        labelText: 'Confirmation Password',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                  ),
                ),
                //Name

                const Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, right: 10.0, left: 10.0, bottom: 10.0),
                  child: Text(
                    '''Your password must have at least 8 characters, with:
                     - 1 uppercase character
                     - 1 special character !@#\$&*~
                     - 1 number'''
                  ),
                ),

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
                    if (dropdownValue == dropOpcoes[0]) ...{
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                        child: TextFormField(
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Insira um ID';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.videogame_asset_outlined),
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              labelText: 'ID - Xbox',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black))),
                        ),
                      ),
                    },
                    if (dropdownValue == dropOpcoes[1]) ...{
                      Padding(

                        padding: const EdgeInsets.only(
                            top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
                        child: TextFormField(
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Insira um ID';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.videogame_asset_outlined),
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              labelText: 'ID - PSN',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black))),
                        ),
                      ),
                    },
                    if (dropdownValue == dropOpcoes[2]) ...{
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                right: 10.0,
                                left: 10.0,
                                bottom: 10.0),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Insira um ID';
                                }
                                return null;
                              },
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: const InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.videogame_asset_outlined),
                                  labelStyle: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  labelText: 'ID - Xbox',
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                right: 10.0,
                                left: 10.0,
                                bottom: 10.0),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Insira um ID';
                                }
                                return null;
                              },
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: const InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.videogame_asset_outlined),
                                  labelStyle: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  labelText: 'ID - PSN',
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black))),
                            ),
                          )
                        ],
                      )
                    },
                  ],
                ),

                SizedBox(
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 40, 0, 77),
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const leadingPageMenu()));
                      }
                    },
                    child: const Text('Save registration'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
