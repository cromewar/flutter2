import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearDescripcionDeImagen(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.photocdn.pt/images/articles/2018/12/03/articles/2017_8/big-sur-coastline-panorama-at-sunset-california-usa-picture-id917302792.jpg'),
    );
  }

  Widget _crearDescripcionDeImagen() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit",
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit",
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

//crea  un Row al que se le llaman las columns
  Widget _crearAcciones() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _crearItemIcono(Icons.call, 'Call'),
          _crearItemIcono(Icons.near_me, 'Ruta'),
          _crearItemIcono(Icons.share, 'Compartir')
        ],
      ),
    );
  }

//Crea cada Colum con su icono y nombre
  Widget _crearItemIcono(IconData icon, String text) {
    double iconSize = 35.0;
    Color iconColor = Colors.blue;
    TextStyle textStyle = TextStyle(color: Colors.blue, fontSize: 16.0);
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

Widget _crearTexto() {
  return Container(
      padding: EdgeInsets.all(25.0),
      child: Text(
        'Ea minim officia esse sint aliqua commodo culpa reprehenderit. Magna adipisicing et commodo ut incididunt dolor ullamco adipisicing. Consectetur laboris ex magna excepteur labore ipsum. Ea proident irure aute do occaecat enim proident sit laboris veniam aliquip adipisicing anim. Magna elit sunt minim est veniam incididunt occaecat fugiat. Dolor sunt irure veniam consequat excepteur nulla sit officia in ea.',
        style: TextStyle(fontSize: 18.0),
        textAlign: TextAlign.justify,
      ));
}
