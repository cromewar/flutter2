import 'package:flutter/material.dart';

class SlidersPage extends StatefulWidget {
  SlidersPage({Key key}) : super(key: key);

  @override
  _SlidersPageState createState() => _SlidersPageState();
}

class _SlidersPageState extends State<SlidersPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders Page"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            _crearSlider(),
            Divider(),
            _checkBox(),
            Divider(),
            _crearSwitch(),
            Divider(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      onChanged: (_bloquearCheck)
          ? null
          : (value) {
              setState(() {
                _valorSlider = value;
              });
            },
      min: 10,
      max: 400,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://pm1.narvii.com/6076/6e7ca6b65dbecfb19b7ad8d9d968dc32d9bdbc0b_00.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _bloquearCheck = value;
    //     });
    //   },
    // );
    return CheckboxListTile(
        title: Text("Bloquear slider"),
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text("Bloquear slider"),
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }
}
