import 'package:flutter/material.dart';
import 'package:form_app/src/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Login Screen',
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
