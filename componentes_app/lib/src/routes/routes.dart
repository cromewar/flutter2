import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/pages/animated_container.dart';
import 'package:componentes_app/src/pages/avatar_page.dart';
import 'package:componentes_app/src/pages/card_page.dart';
import 'package:componentes_app/src/pages/home_page.dart';
import 'package:componentes_app/src/pages/inputs_page.dart';
import 'package:componentes_app/src/pages/list_page.dart';
import 'package:componentes_app/src/pages/sliders_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated_container': (BuildContext context) => AnimCont(),
    'inputs': (BuildContext context) => InputsPage(),
    'sliders': (BuildContext context) => SlidersPage(),
    'listas': (BuildContext context) => ListPage(),
  };
}
