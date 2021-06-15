import 'package:flutter/material.dart';
import 'macros/annotations.dart';

void main() {
  runApp(const MyApp());
}

@widget
Widget _myApp(BuildContext context, {String? appTitle, String? homePageTitle}) {
  return MaterialApp(
      title: appTitle ?? 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: homePageTitle ?? 'Flutter Demo Home Page'));
}

class MyHomePage extends StatefulWidget {
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  const MyHomePage({Key? key, required this.title}) : super(key: key);
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(super.widget.title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text('$_counter', style: Theme.of(context).textTheme.headline4)
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}
