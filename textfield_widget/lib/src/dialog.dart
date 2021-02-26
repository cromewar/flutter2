import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  Color textColor = Colors.white;
  String usrText = "";
  void onUsrText(String text) {
    usrText = text;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        '¿Aceptar el ingreso de texto?',
        style: TextStyle(color: textColor, fontSize: 15.0),
      ),
      content:
          Text(usrText, style: TextStyle(color: textColor, fontSize: 13.0)),
      actions: <Widget>[
        FlatButton(
          child: Text(
            "Yes",
            style: TextStyle(color: textColor, fontSize: 11.0),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text(
            "No",
            style: TextStyle(color: textColor, fontSize: 10.0),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
      backgroundColor: Colors.red,
    );
  }
}
