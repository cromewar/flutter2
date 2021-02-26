import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.home,
            size: 150.0,
            color: Colors.grey,
          ),
          Text("Primer Tab"),
        ],
      ),
    );
  }
}
