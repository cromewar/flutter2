import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:user_preferences/pages/home_page.dart';
import 'package:user_preferences/pages/settings_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    HomePage.routeName: (BuildContext context) => HomePage(),
    SettingsPage.routeName: (BuildContext context) => SettingsPage(),
  };
}
