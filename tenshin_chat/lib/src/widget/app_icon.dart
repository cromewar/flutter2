import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'images/logo.png',
          width: 70,
          height: 70,
        ),
        Text(
          " Tenshin Chat",
          style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
