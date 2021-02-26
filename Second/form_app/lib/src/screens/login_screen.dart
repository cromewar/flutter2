import 'package:flutter/material.dart';
import 'package:form_app/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixins {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordFiel(),
              Container(
                margin: EdgeInsets.only(top: 20.0),
              ),
              submitField()
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: 'email', hintText: 'you@mail.com'),
      validator: validateEmail,
      onSaved: (String value) {},
    );
  }

  Widget passwordFiel() {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {},
    );
  }

  Widget submitField() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) formKey.currentState.save();
      },
      child: Text("Enviar"),
    );
  }
}
