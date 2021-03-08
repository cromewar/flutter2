import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/utils/constants.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBacgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 100.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: kBacgroundColor,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Todoey',
                  style: kTitleTextStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '12 task',
                  style: kSubtitleTextStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Color for background :3 #63C9FE :D
//color in rgba(99, 201, 254, 1)
