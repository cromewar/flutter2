import 'package:flutter/material.dart';
import 'package:todoey_flutter/src/utils/constants.dart';

class ListTileWidget extends StatelessWidget {
  final String text;
  ListTileWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: kListTileTextStyle,
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
