import 'package:flutter/material.dart';
import '../icons/my_flutter_app_icons.dart';

final List categories = [
  {'image': 'assets/images/chair.jpg', 'name': 'Chair', 'available': '101'},
  {'image': 'assets/images/sofa.jpg', 'name': 'Sofa', 'available': '0'},
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
              height: 295.0,
              color: Theme.of(context).primaryColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      buildTopSectionOne,
                      SizedBox(
                        height: 30.0,
                      ),
                      buildInputBox(context),
                      SizedBox(
                        height: 20.0,
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
                SizedBox(
                  height: 5.0,
                ),
                buildCategoriesBox(context),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

var buildCategoriesBox = (context) => Container(
      height: 130.0,
      width: double.infinity,
      //color: Colors.black,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext contex, int index) =>Padding(
            padding: EdgeInsets.symmetric(vertical:15.0,horizontal: 5.0),
            child:Card(
              elevation: 10.0,
              child: Container(
                width: 100.0,
                //color: Colors.yellow,
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          categories[index]['image'],
                          fit: BoxFit.fill,
                          height: 40.0,
                        ),
                      
                        Text(
                          categories[index]['name'],
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                    int.parse(categories[index]['available']) > 0
                        ? Positioned(
                            top: 10.0,
                            right: -10.0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  color: Theme.of(context).primaryColor,
                                  border: Border.all(
                                      color: Colors.white, width: 2.0)),
                              child: Text(
                                categories[index]['available'],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        : SizedBox()
                  ],
                ),
              )) ,) ),
    );

var buildInputBox = (context) => Material(
      elevation: 7.0,
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
