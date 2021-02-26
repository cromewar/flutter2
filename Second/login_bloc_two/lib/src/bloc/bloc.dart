import 'dart:async';
import 'package:login_bloc_two/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //validadores de input
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Combinator RxDart
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (a, b) => true);
  //funciones para los inputs del usuario
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print("email $validEmail");
    print("Password $validPassword");
  }

  //limpiar memoria
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

//creación de la instancia de BLOC con sus streams
