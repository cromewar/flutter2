import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.ondemand_video,
            size: 150.0,
            color: Colors.grey,
          ),
          Text("Segundo Tab"),
        ],
      ),
    );
  }
}
