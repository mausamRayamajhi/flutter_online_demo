import 'package:flutter/material.dart';
import '../icons/my_flutter_app_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<BottomNavigationBarItem> navigationItems = [];

  final bottomNavigationBarItemStyle = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.black,
  );

  CustomBottomNavigationBar() {
    navigationItems.add(BottomNavigationBarItem(
        activeIcon: Icon(
        MyFlutterApp.home,
          color: Colors.red,
        ),
        icon: Icon(
           MyFlutterApp.home,
          color: Colors.black,
        ),
        title: Text(
          'Home',
          style: bottomNavigationBarItemStyle,
        )));

    navigationItems.add(BottomNavigationBarItem(
        icon: Icon(MyFlutterApp.earth),
        title: Text('Discover', style: bottomNavigationBarItemStyle)));

    navigationItems.add(BottomNavigationBarItem(
        icon: Icon(MyFlutterApp.cart, color: Colors.black),
        title: Text('Cart', style: bottomNavigationBarItemStyle)));

    navigationItems.add(BottomNavigationBarItem(
        icon: Icon(MyFlutterApp.comment, color: Colors.black),
        title: Text('Message', style: bottomNavigationBarItemStyle)));
        
    navigationItems.add(BottomNavigationBarItem(
        icon: Icon(MyFlutterApp.user, color: Colors.black),
        title: Text('Profile', style: bottomNavigationBarItemStyle)));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: navigationItems,
    );
  }
  
}
