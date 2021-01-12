import 'package:flutter/material.dart';
import 'package:design_simple/src/pages/basic_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => BasicPage(),
  };
}
