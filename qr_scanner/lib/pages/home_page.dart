import 'package:flutter/material.dart';
import 'package:qr_scanner/pages/directions_page.dart';
import 'package:qr_scanner/pages/maps_page.dart';
import 'package:qr_scanner/widgets/custom_navigator_bar.dart';
import 'package:qr_scanner/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {}),
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentIndext = 1;
    switch (currentIndext) {
      case 0:
        return MapHistory();
      case 1:
        return Directions();
      default:
        return MapHistory();
    }
  }
}
