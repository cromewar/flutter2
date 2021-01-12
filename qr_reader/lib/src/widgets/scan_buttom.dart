import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class SacanButton extends StatelessWidget {
  const SacanButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //     '#3D8BEF', 'Cancel', false, ScanMode.QR);
        final barcodeScanRes = 'https://cromewar.com';
        print(barcodeScanRes);
      },
      child: Icon(Icons.filter_center_focus),
      elevation: 0,
    );
  }
}
