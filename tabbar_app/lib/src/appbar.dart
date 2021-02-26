import 'package:flutter/material.dart';
import 'package:tabbar_app/src/screens/contact.dart';
import 'package:tabbar_app/src/screens/home.dart';
import 'package:tabbar_app/src/screens/video.dart';

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => new _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "TabBar app",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            centerTitle: true,
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.ondemand_video),
              ),
              Tab(
                icon: Icon(Icons.contacts),
              )
            ]),
          ),
          body: TabBarView(children: <Widget>[
            Home(),
            Video(),
            Contact(),
          ]),
        ));
  }
}
