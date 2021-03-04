import 'package:firebase_chat/constants.dart';
import 'package:firebase_chat/widgets/log_reg_buttons.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email, password;
  bool _passwordHidden = true;
  Icon _passwordIcon = Icon(
    Icons.visibility_off,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Ingresar email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: _passwordHidden,
              onChanged: (value) {
                password = value;
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Ingresar contraseña',
                suffix: InkWell(
                  child: _passwordIcon,
                  onTap: setHiddenPasword,
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            LogRegWidget(
              color: Colors.blueAccent,
              text: 'Register',
              onpress: () {
                print(email);
                print(password);
              },
            )
          ],
        ),
      ),
    );
  }

  void setHiddenPasword() {
    setState(() {
      if (_passwordHidden == true) {
        _passwordHidden = false;
      } else {
        _passwordHidden = true;
      }
    });
  }
}
