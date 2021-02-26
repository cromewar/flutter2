import 'package:flutter/material.dart';
import 'package:tenshin_chat/src/widget/app_icon.dart';
import 'package:tenshin_chat/src/widget/app_round_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = "";
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //from usr/widget/app_icon.dart
            AppIcon(),
            SizedBox(
              height: 48.0,
            ),
            //from usr/widget/app_round_icon.dart
            roundButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              name: "Log in",
            ),
            roundButton(
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, "/registration");
              },
              name: "Register",
            ),
          ],
        ),
      ),
    );
  }
}
