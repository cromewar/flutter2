import 'package:flutter/material.dart';
import 'package:firebase_chat/screens/welcome_screen.dart';
import 'package:firebase_chat/screens/login_screen.dart';
import 'package:firebase_chat/screens/registration_screen.dart';
import 'package:firebase_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
