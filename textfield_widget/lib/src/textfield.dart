import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyTextField> {
  String usrInput = "";
  final TextEditingController controller = TextEditingController();
  void onUsrEntry(String value) {
    setState(() {
      usrInput = usrInput + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Widget"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aquí"),
              onSubmitted: onUsrEntry,
              controller: controller,
            ),
            RaisedButton(onPressed: () {}),
            Text(usrInput),
          ],
        ),
      ),
    );
  }
}
