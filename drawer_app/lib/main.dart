import 'package:drawer_app/src/screens/battery.dart';
import 'package:drawer_app/src/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/src/app.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => Settings(),
      Battery.routeName: (BuildContext context) => Battery(),
    },
  ));
}
