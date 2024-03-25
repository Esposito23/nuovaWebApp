import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nuova_webapp/main.dart';
import 'package:nuova_webapp/router/route.dart';
import 'package:nuova_webapp/utils/assets.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Assets.imgLogin,
              const SizedBox(width: 20.0),
              Expanded(
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  void checkCredentials() async {
    // var resp = await http.post(Uri.parse('/utenti/share/appmobile/loginApp'),
    //     // headers: <String, String>{'authorization': basicAuth},
    //     body: jsonEncode({'username': usercontroller.text,'password':passcontroller.text}));
    // if (jsonDecode(resp.body)["response_value"] == "__OK__") {
    navigator.move(Myroute.homepage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Login Pohema',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          controller: usercontroller,
          decoration: const InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: passcontroller,
          decoration: const InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            checkCredentials();
          },
          child: const Text('Accedi'),
        ),
      ],
    );
  }
}
