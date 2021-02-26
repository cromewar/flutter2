import 'package:flutter/material.dart';
import 'package:form_app/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordFied(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitField(),
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Email',
          labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
          hintText: 'you@example.com'),
      validator: validateEmail,
      onSaved: (String value) {
        print("Saved " + value);
      },
    );
  }

  Widget passwordFied() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          labelText: 'Password',
          labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
          hintText: 'password'),
      obscureText: false,
      validator: validatePassword,
    );
  }

  Widget submitField() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Text("Send"),
    );
  }
}
