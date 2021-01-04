import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'tab': Icons.tab,
  'phonelink_setup': Icons.phonelink_setup,
  'keyboard': Icons.keyboard,
  'dashboard': Icons.dashboard,
  'list': Icons.list,
};

Icon getIcon(String nombreIcono) => Icon(
      _icons[nombreIcono],
      color: Colors.blue,
    );
