import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 7.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Card Title"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis gravida eros. Phasellus vitae laoreet neque. ."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancel')),
              FlatButton(onPressed: () {}, child: Text("Ok"))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/250'),
            fadeInDuration: Duration(milliseconds: 500),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //     image: NetworkImage(
          //         'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg')),
          Container(
            child: Text("Example text"),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 2.0)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
