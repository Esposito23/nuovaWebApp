import 'package:flutter/material.dart';
import 'package:nuova_webapp/pages/homepage/homepage.dart';
import 'package:nuova_webapp/pages/login/login.dart';

class Myroute {
  static const String homepage = '/homepage';
  static const String login = '/login';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      homepage: (context) => const MyHomePage(),
      login: (context) => const Login()
    };
  }
}
