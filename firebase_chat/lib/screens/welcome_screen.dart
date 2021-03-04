import 'package:firebase_chat/widgets/log_reg_buttons.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = '/';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.lightBlue, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ["Crome Chat"],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.start,
                  totalRepeatCount: 1,
                  repeatForever: false,
                  speed: Duration(milliseconds: 200),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            LogRegWidget(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              onpress: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
            LogRegWidget(
              color: Colors.blueAccent,
              text: 'Register',
              onpress: () {
                Navigator.pushNamed(context, 'registration');
              },
            ),
          ],
        ),
      ),
    );
  }
}
