import 'package:flutter/material.dart';
import 'package:tenshin_chat/src/widget/app_icon.dart';
import 'package:tenshin_chat/src/widget/app_round_button.dart';
import 'package:tenshin_chat/src/widget/input_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tenshin_chat/src/services/authentication.dart';

class RegistrationScreen extends StatefulWidget {
  static const String routeName = "/registration";
  RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final double borderCircle = 24.0;
  final Color borderColor = Colors.lightBlueAccent;
  final double borderWidth = 2.0;
  // email and password
  String _email, _password;
  //Firebase Auth

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppIcon(),
            SizedBox(
              height: 48.0,
            ),
            inputText(
              inputhintText: "email",
              borderShape: borderCircle,
              borderColor: borderColor,
              borderWidth: borderWidth,
              onChanged: (value) {
                _email = value;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            inputText(
              inputhintText: "contrasaeña",
              borderShape: borderCircle,
              borderColor: borderColor,
              borderWidth: borderWidth,
              onChanged: (value) {
                _password = value;
              },
              isPassword: true,
            ),
            SizedBox(
              height: 24.0,
            ),
            roundButton(
              color: Colors.blueAccent,
              onPressed: () async {
                var newUser = await Authentication()
                    .createUser(email: _email, password: _password);
                if (newUser != null) {
                  Navigator.pushNamed(context, "/chat");
                }
              },
              name: "Registrarse",
            ),
          ],
        ),
      ),
    );
  }
}
