import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: kButtomSheetTextStyle,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF63C9FE),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Add',
                  style: kTextButtomTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
