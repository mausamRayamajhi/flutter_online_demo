import 'package:flutter/material.dart';
import '../icons/my_flutter_app_icons.dart';

final List categories = [
  {'image': 'assets/images/chair.jpg', 'name': 'Chair', 'available': '101'},
  {'image': 'assets/images/sofa.jpg', 'name': 'Sofa', 'available': '45'},
  {'image': 'assets/images/table.jpg', 'name': 'Table', 'available': '23'},
  {'image': 'assets/images/bed.png', 'name': 'Bed', 'available': '0'}
];

class HomeTopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 300.0,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                  ),
                  buildTopSectionOne,
                  SizedBox(
                    height: 30.0,
                  ),
                  buildInputBox(context),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),


            /*
        * I HAVE PUT LIST OF CATEGORIES HERE BUT DID NOT WORK
        * FIX IT 
        */


          ],
        ),
        
        
        /*
        * I HAVE TIRED TO PUT IT HERE TOO .
        * MAY BE THERE IS ERROR IN MY CODE
         */
      
      
      ],
    );
  }
}

var buildInputBox = (context) => Material(
      elevation: 7.0,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: Container(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(Icons.search, color: Colors.black),
            ),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
                    hintText: 'Search unique furniture now.',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal)),
              ),
            )
          ],
        ),
      ),
    );

var buildTopSectionOne = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Holla, Marshall',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Want to buy unique furniture?',
          style: TextStyle(color: Colors.white70, fontSize: 14.0),
        ),
      ],
    ),
    Material(
      elevation: 5.0,
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: Icon(MyFlutterApp.bell),
        ),
        Positioned(
          right: 0.0,
          child: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
          ),
        )
      ]),
    )
  ],
);
