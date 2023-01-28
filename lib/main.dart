import 'package:flutter/material.dart';
import 'package:material/view/templates/material_main/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Material';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Root(
        appTitle: title,
      ),
    );
  }
}

class Root extends StatelessWidget {
  const Root({
    final Key? key,
    required String appTitle,
  })  : _appTitle = appTitle,
        super(key: key);

  final String _appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      body: const MaterialMain(),
    );
  }
}
