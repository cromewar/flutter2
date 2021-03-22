import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: Center(
        child: Text('Preferences page'),
      ),
    );
  }
}
