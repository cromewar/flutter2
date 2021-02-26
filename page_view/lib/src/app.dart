import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Container(color: index % 2 == 0 ? Colors.pink : Colors.red);
        },
      ),
    );
  }
}
