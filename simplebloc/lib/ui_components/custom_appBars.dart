import 'package:flutter/material.dart';

Widget primaryAppbar(context) {
  //PrefferedSize is required to use a widget as an AppBar.
  return PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: Container(
      padding: EdgeInsets.only(left: 45, right: 35),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                //Heading & Sub-Heading
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'BLoC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Architect your Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              IconButton(
                //More Icon
                onPressed: () {},
                icon: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Icon(
                      IconData(0xe806, fontFamily: 'Icons'),
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
