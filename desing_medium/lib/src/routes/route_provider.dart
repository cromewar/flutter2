import 'package:desing_medium/src/pages/botones_page.dart';
import 'package:desing_medium/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'botones': (BuildContext context) => BotonesPage(),
  };
}
