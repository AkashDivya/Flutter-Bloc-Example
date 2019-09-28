import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/homepage.dart';

void main() {
  //Following codes Customizes the StatusBar & NavigationBar.
  //Services Package were imported for these.

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.transparent,
  ));

  //Following code will Force the App Orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _primaryColor = Colors.black;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProductSans',
        primaryColor: _primaryColor,
        accentColor: Color(0xff666666),
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: _primaryColor,
          textTheme: ButtonTextTheme.primary,
          minWidth: double.infinity,
          height: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      home: HomePage(),
    );
  }
}
