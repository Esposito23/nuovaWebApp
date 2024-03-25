import 'package:flutter/material.dart';
import 'package:nuova_webapp/pages/login/login.dart';
import 'package:nuova_webapp/router/route.dart';
import 'package:nuova_webapp/router/router.dart';
import 'package:nuova_webapp/utils/messaggi.dart';

final messaggi = Messaggi();
final navKey = GlobalKey<NavigatorState>();
final navigator = MyNavigator();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      routes: Myroute.getRoutes(),
      home: const Login(),
    );
  }
}
