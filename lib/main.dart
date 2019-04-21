import 'package:flutter/material.dart';
import 'src/pages/online.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online',
      home: Online(),
      theme: ThemeData(primaryColor: Color(0xFFDC2F2E), fontFamily: 'Oxygen'),
    );
  }
}
