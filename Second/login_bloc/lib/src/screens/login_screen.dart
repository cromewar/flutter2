import 'package:flutter/material.dart';
import 'package:login_bloc/src/bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'you@example.com',
                labelText: 'Email',
                errorText: snapshot.error),
            onChanged: bloc.changeEmail,
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder(
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changePassword,
        );
      },
      stream: bloc.password,
    );
  }

  Widget submitButton() {
    return RaisedButton(child: Text('Send'), onPressed: () {});
  }
}
