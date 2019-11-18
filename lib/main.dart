import 'package:flutter/material.dart';
import 'package:ui_example_1/screens/tab_screen.dart';

void main() => runApp(MyApp());

GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainNavigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: 'DINPro',
        primarySwatch: Colors.blue,
      ),
      home: TabScreen(),
    );
  }
}


