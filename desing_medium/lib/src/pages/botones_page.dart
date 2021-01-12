import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100.0,
        ),
      ],
    );
  }

  Widget _titulos() {
    final estilo = TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    final estilo2 = TextStyle(color: Colors.white, fontSize: 18.0);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Materias Disponibles',
              style: estilo,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '¿Que te gustaria aprender hoy?',
              style: estilo2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.code), label: 'jelo'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'helo'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'jelo'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: 'jelo'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'jelo'),
      ],
      fixedColor: Colors.pinkAccent,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.greenAccent, Icons.science, 'Quimica'),
          _crearBotonRedondeado(Colors.blueAccent, Icons.poll, 'Estadistica'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.amber, Icons.architecture, 'Algebra'),
          _crearBotonRedondeado(Colors.cyan, Icons.money, 'Finanzas'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.pinkAccent, Icons.camera_roll, 'Fotografia'),
          _crearBotonRedondeado(Colors.green, Icons.eco, 'Biología'),
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          height: 160.0,
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color, fontSize: 18.0),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
