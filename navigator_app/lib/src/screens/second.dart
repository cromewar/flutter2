import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String title;
  Second({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Ir atras"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
