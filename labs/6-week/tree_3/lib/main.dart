import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tree Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Three Tree Demo'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: change ? _buildWorld() : _buildFlutter())
        ],
      ),
    );
  }

  Widget _buildWorld() {
    return Row(
      children: <Widget>[Text('Hello World')],
    );
  }

  Widget _buildFlutter() {
    return Row(
      children: <Widget>[Text('Hello Flutter')],
    );
  }
}
