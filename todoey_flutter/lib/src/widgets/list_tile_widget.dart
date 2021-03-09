import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/utils/constants.dart';

class ListTileWidget extends StatefulWidget {
  final String text;
  ListTileWidget({this.text});

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: kListTileTextStyle,
      ),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkbosState;
  TaskCheckbox({this.checkbosState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xFF63C9FE),
      value: checkbosState,
      onChanged: (newValue) {},
    );
  }
}
