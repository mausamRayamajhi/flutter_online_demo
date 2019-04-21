import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/header_top_section.dart';

class Online extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeTopSection(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
