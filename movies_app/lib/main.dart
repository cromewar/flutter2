import 'package:flutter/material.dart';
import 'package:movies_app/src/routes/route_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trending Movies',
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}
