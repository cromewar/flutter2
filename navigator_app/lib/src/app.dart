import 'package:flutter/material.dart';
import 'package:navigator_app/src/screens/second.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Continuar"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Second(
                          title: "Cambio",
                        )));
          },
        ),
      ),
    );
  }
}
