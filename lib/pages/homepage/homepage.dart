import 'package:flutter/material.dart';
import 'package:nuova_webapp/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  List<Widget> getAction() {
    List<Widget> action = [];
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    action.add(const Icon(Icons.person));
    return action;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(messaggi.homepage),
        actions: getAction(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counter.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.person),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
