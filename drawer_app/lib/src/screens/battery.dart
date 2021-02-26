import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String routeName = "/battery";
  const Battery({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Battery Page"),
        centerTitle: true,
      ),
      body: Container(child: Center(child: Text("Battery"))),
    );
  }
}
