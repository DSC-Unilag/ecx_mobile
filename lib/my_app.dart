import 'package:flutter/material.dart';
import 'package:startup_name/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
