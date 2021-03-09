import 'package:flutter/material.dart';
import 'package:qr_scanner/pages/home_page.dart';
import 'package:qr_scanner/pages/map_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'map': (BuildContext context) => MapPage(),
  };
}
