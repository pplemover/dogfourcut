import 'package:flutter/material.dart';
import 'package:dogfourcut/screen/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '견생네컷',
      home: HomeScreen(),
    );
  }
}