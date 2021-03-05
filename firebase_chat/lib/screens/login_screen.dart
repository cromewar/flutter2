import 'package:firebase_chat/constants.dart';
import 'package:firebase_chat/widgets/log_reg_buttons.dart';
import 'package:flutter/material.dart';
import 'package:firebase_chat/utils/hidden_buttom.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Ingresar email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: _passwordHidden,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Ingresar contraseña',
                suffix: InkWell(
                  child: _passwordIcon,
                  onTap: () {
                    setState(() {
                      _passwordHidden = setHiddenPasword2(_passwordHidden);
                      _passwordIcon =
                          getHiddenIcon(_passwordIcon, _passwordHidden);
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            LogRegWidget(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
