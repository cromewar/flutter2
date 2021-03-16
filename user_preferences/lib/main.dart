import 'package:flutter/material.dart';
import 'package:user_preferences/pages/home_page.dart';
import 'package:user_preferences/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferences',
      initialRoute: HomePage.routeName,
      routes: getAppRoutes(),
    );
  }
}
