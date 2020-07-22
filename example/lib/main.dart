import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mediation_test/mediation_test.dart';

void main() {
  Admob.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sample App'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text("Present Test Suite"),
              onPressed: () {
                MediationTest.presentTestSuite();
              }),
        ),
      ),
    );
  }
}
