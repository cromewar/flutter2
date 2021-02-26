import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tenshin Learning',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Text(
            'Aprendemos Juntos',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.apps),
        backgroundColor: Colors.red,
      ),
    ),
  );

  runApp(app);
}
