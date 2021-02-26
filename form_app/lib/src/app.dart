import 'package:flutter/material.dart';
import 'package:form_app/src/screens/login_screen.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Login app"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: LoginScreen(),
    ));
  }
}
