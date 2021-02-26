import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collection = ['Tenshin', 'es', 'Increible'];

  void onPressButton() {
    setState(() {
      flutterText = collection[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Actualizar',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                onPressed: onPressButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
