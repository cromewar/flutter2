import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 34.0, color: Colors.black45);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Count Bar App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Numero de Tabs",
                style: estiloTexto,
              ),
              Text(
                "$_conteo",
                style: estiloTexto,
              )
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.clear),
        ),
        Expanded(
          child: SizedBox(width: 30.0),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
