import 'package:flutter/material.dart';
import 'package:stateless_app/src/Screens/card.dart';

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(
    color: Colors.grey,
    fontSize: 30.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenshin Proototyping'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
                title: Text(
                  "I Love Tenshin",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: iconSize,
                )),
            MyCard(
                title: Text(
                  "I Like my Class",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: iconSize,
                )),
            MyCard(
                title: Text(
                  "Take it Again",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.queue_play_next,
                  color: Colors.deepOrangeAccent,
                  size: iconSize,
                )),
          ],
        ),
      ),
    );
  }
}
