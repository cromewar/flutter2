import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/utils/constants.dart';
import 'package:todoey_flutter/src/widgets/list_tile_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBacgroundColor,
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        child: FloatingActionButton(
          backgroundColor: kBacgroundColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 60.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 100.0, left: 45.0, right: 45.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 40.0,
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ListView(
                  children: [
                    ListTileWidget(
                      text: 'Task 1',
                    ),
                    ListTileWidget(
                      text: 'Task 2',
                    ),
                    ListTileWidget(
                      text: 'Task 3',
                    ),
                  ],
                ),
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
