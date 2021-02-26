import 'package:flutter/material.dart';

class MyButtonTabBar extends StatefulWidget {
  @override
  _MyButtonTabBarState createState() => new _MyButtonTabBarState();
}

class _MyButtonTabBarState extends State<MyButtonTabBar> {
  var textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Button tab Bar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              title: Text(
                "favorites",
                style: TextStyle(color: textColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: textColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                color: Colors.white,
              ),
              title: Text(
                "Tutoring",
                style: TextStyle(color: textColor),
              ))
        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
