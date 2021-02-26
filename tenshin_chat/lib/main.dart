import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tenshin_chat/src/screens/login_screen.dart';
import 'package:tenshin_chat/src/screens/registration_screen.dart';
import 'package:tenshin_chat/src/screens/welcome_screen.dart';
import 'package:tenshin_chat/src/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    home: WelcomeScreen(),
    theme: ThemeData(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black45)),
    ),
    //routes
    initialRoute: WelcomeScreen.routeName,
    routes: <String, WidgetBuilder>{
      LoginScreen.routName: (BuildContext context) => LoginScreen(),
      WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
      RegistrationScreen.routeName: (BuildContext context) =>
          RegistrationScreen(),
      ChatScreen.routeName: (BuildContext context) => ChatScreen(),
    },
  ));
}
