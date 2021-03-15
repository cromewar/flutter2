import 'package:flutter/material.dart';
import 'package:qr_scanner/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String type = 'http';

  nuevoScan(String value) async {
    final newScan = new ScanModel(valor: value);
    final id = await DBProvider.db.nuevoScan(newScan);
    //Set NewScan Id to Id from the database.
    newScan.id = id;
    if (this.type == newScan.tipo) {
      this.scans.add(newScan);
      notifyListeners();
    }
  }

  loadScans() async {
    final scans = await DBProvider.db.getAllScans();
    this.scans = [...scans];
    notifyListeners();
  }

  loadScansByType(String tipo) async {
    final scans = await DBProvider.db.getScansByType(tipo);
    this.scans = [...scans];
    this.type = tipo;
    notifyListeners();
  }

  eraseAll() async {
    await DBProvider.db.deleteAllRegistersFromDataBase();
    this.scans = [];
    notifyListeners();
  }

  eraseScansByID(int id) async {
    await DBProvider.db.deleteScan(id);
    this.loadScansByType(this.type);
  }
}
