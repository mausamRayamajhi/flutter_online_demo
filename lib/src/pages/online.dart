import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/header_top_section.dart';
import '../widgets/bottom_section.dart';
import '../widgets/bottom_section_copy.dart';

class Online extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: <Widget>[
              HomeTopSection(),
              SizedBox(
                height: 10.0,
              ),
              BottomSection(),
                BottomSectionCopy(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
