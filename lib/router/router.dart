import 'package:flutter/material.dart';
import 'package:nuova_webapp/main.dart';

class MyNavigator {
  void move(String route, [bool hide = false]) {
    navKey.currentState?.pushNamedAndRemoveUntil(route, (Route route) => false);
  }
}
