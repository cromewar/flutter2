import 'package:flutter/material.dart';

class MapHistory extends StatelessWidget {
  const MapHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) => ListTile(
        leading: Icon(
          Icons.map,
          color: Theme.of(context).primaryColor,
        ),
        title: Text('http://sample.com'),
        subtitle: Text('ID: 1'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.grey,
        ),
        onTap: () {},
      ),
      itemCount: 10,
    );
  }
}
