import 'package:flutter/widgets.dart';
import 'package:todoey_flutter/src/screens/task_screen.dart';

Map<String, WidgetBuilder> getApproutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => TaskScreen(),
    // 'tas2': (BuildContext context) => ,
  };
}
