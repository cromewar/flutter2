import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentIndex = 0;

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: "Mapas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration_rounded),
          label: "Direcciones",
        ),
      ],
    );
  }
}
