import 'package:firebase_chat/screens/chat_screen.dart';
import 'package:firebase_chat/screens/login_screen.dart';
import 'package:firebase_chat/screens/registration_screen.dart';
import 'package:firebase_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
    RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
    LoginScreen.id: (BuildContext context) => LoginScreen(),
    ChatScreen.id: (BuildContext context) => ChatScreen(),
  };
}
