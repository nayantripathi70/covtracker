import 'package:covtracker/src/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cov-19 Tracker'),
      ),
      body: const HomePage(),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'CovTracker',
    home: MyApp(),
  ));
}
