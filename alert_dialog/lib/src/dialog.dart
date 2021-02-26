import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  MyDialog({Key key}) : super(key: key);
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String usrInput = "";

  void onUsrEntry(String entry) {
    setState(() {
      usrInput = entry;
    });
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      title: Text("¿Desea ingressar el texto?"),
      content: Text(value),
      actions: <Widget>[
        FlatButton(onPressed: () {}, child: Text("Si")),
        FlatButton(onPressed: () {}, child: Text("No")),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo alert dialog"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese aquí su texto"),
              onChanged: onUsrEntry,
            ),
            RaisedButton(
              child: Text("Ver alerta"),
              onPressed: () {
                showAlert(usrInput);
              },
            )
          ],
        ),
      ),
    );
  }
}
