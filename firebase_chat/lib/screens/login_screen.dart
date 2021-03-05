import 'package:firebase_auth/firebase_auth.dart';
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
  String _email, _password;
  String _onErrorText = '';
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
                _email = value;
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
                _password = value;
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
              height: 10.0,
            ),
            Text(
              _onErrorText,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            LogRegWidget(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              onpress: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _email, password: _password);
                  if (userCredential != null) {
                    Navigator.pushNamed(context, 'chat');
                  }
                } on FirebaseAuthException catch (e) {
                  print(e);
                  setState(() {
                    _onErrorText = 'La cuenta no existe :\'(';
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
