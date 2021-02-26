import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Drawer getDrawer(BuildContext context) {
    var header = DrawerHeader(child: Text("Options"));
    var info = AboutListTile(
      child: Text("Information"),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0",
      icon: Icon(Icons.info),
    );
    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), "App settings", '/settings'),
          getItem(Icon(Icons.home), "Home", "/"),
          getItem(Icon(Icons.battery_charging_full), "Battery", "/battery"),
          info,
        ],
      );
    }

    return (Drawer(child: getList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          centerTitle: true,
        ),
        drawer: getDrawer(context));
  }
}
