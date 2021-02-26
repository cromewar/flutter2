import 'package:flutter/material.dart';
import 'package:presentation_card/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presentation Card',
      debugShowCheckedModeBanner: false,
      routes: getAppRoutes(),
      initialRoute: '/',
    );
  }
}
