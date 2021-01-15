import 'dart:io';
import 'package:qr_reader/src/models/scan_model.dart';
export 'package:qr_reader/src/models/scan_model.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DBProvider {
  static Database _database;

  static final DBProvider db = DBProvider._();
  DBProvider._();

  get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    //Path de la base de datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //Creación del path para la base
    final path = join(documentsDirectory.path, 'ScansDB.db');

    //Crear base de datos
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE Scans(
          id INTEGER PRIMARY KEY,
          tipo TEXT,
          valor TEXT
        )
      ''');
    });
  }

  Future<int> nuevoScanRaw(SacanModel nuevoScan) async {
    final id = nuevoScan.id;
    final tipo = nuevoScan.tipo;
    final valor = nuevoScan.valor;

    final db = await database;

    final res = await db.rawInsert('''
      INSERT INTO Scans(id, tipo, vlor)
        VALUES($id, '$tipo', '$valor')
    ''');

    return res;
  }

  Future<int> nuevoScan(SacanModel nuevoScan) async {
    final db = await database;
    final res = await db.insert(
      'Scans',
      nuevoScan.toJson(),
    );
    return res;
  }
}
