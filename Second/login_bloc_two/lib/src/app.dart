import 'package:flutter/material.dart';
import 'package:login_bloc_two/src/bloc/bloc.dart';
import 'package:login_bloc_two/src/screens/login_screen.dart';

import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<Bloc>(
      create: (context) => Bloc(),
      dispose: (context, bloc) => bloc.dispose(),
      child: new MaterialApp(
        title: 'Login Screen',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login Screen BLOC'),
            centerTitle: true,
          ),
          body: LoginWidget(),
        ),
      ),
    );
  }
}
