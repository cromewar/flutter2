import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('User Preferences'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color Secundario'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre usuario'),
          Divider(),
        ],
      ),
    );
  }
}
