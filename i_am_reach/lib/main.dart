import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Im rich',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Im rich',
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/img/diamond.png'),
          ),
        ),
      ),
    );
  }
}
