import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(), _pagina2(context)],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      //fit: StackFit.expand,
      children: [
        _colorFondo(),
        _imagenFondo(),
        _crearTextos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(80, 194, 222, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTextos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: estiloTexto,
          ),
          Text(
            'Miércoles',
            style: estiloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Stack(
      children: [
        _colorFondo2(),
        _boton(context),
      ],
    );
  }

  Widget _colorFondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(70, 185, 216, 1.0),
    );
  }

  Widget _boton(BuildContext context) {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue[400],
        onPressed: () {
          Navigator.pushNamed(context, 'botones');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
