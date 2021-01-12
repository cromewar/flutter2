import 'package:flutter/material.dart';
import 'package:qr_reader/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApproutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
  };
}
