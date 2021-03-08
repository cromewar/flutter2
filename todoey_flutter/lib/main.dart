import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/routes/route_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todoey',
      routes: getApproutes(),
      initialRoute: '/',
    );
  }
}
