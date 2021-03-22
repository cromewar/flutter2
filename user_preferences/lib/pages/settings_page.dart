import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/menu_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;
  int _gender = 1;
  String _userName = "user name";
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    loadPreferences();
    _textEditingController = new TextEditingController(text: _userName);
  }

  _getSelectedGender(int val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('gender', val);
    setState(() {
      _gender = val;
    });
  }

  loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _gender = prefs.getInt('gender');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _darkMode,
            onChanged: (value) {
              setState(() {
                _darkMode = value;
              });
            },
            title: Text(
              'Dark Mode',
            ),
          ),
          RadioListTile(
            value: 1,
            groupValue: _gender,
            onChanged: _getSelectedGender,
            title: Text('Male'),
          ),
          RadioListTile(
            value: 2,
            groupValue: _gender,
            onChanged: _getSelectedGender,
            title: Text('Female'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter de user name',
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
