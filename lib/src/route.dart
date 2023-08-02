import 'package:flutter/material.dart';
import 'package:teentime/screens/login.dart';
import 'package:teentime/screens/sign_up.dart';
import 'package:teentime/screens/home.dart';

class Routes {
  Routes._();

  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => Login(),
    signup: (BuildContext context) => SignUp(),
    home: (BuildContext context) => Home(),
  };
}
