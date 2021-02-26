import 'package:flutter/material.dart';
import 'package:tenshin_chat/src/widget/app_icon.dart';
import 'package:tenshin_chat/src/widget/app_round_button.dart';
import 'package:tenshin_chat/src/widget/input_text.dart';

class LoginScreen extends StatefulWidget {
  static const String routName = "/login";
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppIcon(),
            SizedBox(
              height: 48.0,
            ),
            inputText(
              inputhintText: "usuario",
              borderShape: 32.0,
              borderColor: Colors.lightBlueAccent,
              borderWidth: 2.0,
              onChanged: (value) {
                _email = value;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            inputText(
              inputhintText: "contraseña",
              borderShape: 32.0,
              borderColor: Colors.lightBlueAccent,
              borderWidth: 2.0,
              onChanged: (value) {
                _password = value;
              },
            ),
            SizedBox(
              height: 23.0,
            ),
            roundButton(
              color: Colors.blueAccent,
              onPressed: () {},
              name: "log in",
            ),
          ],
        ),
      ),
    );
  }
}
