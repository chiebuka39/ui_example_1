import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:ui_example_1/screens/screen_four.dart';
import 'package:ui_example_1/screens/screen_one.dart';
import 'package:ui_example_1/screens/screen_three.dart';
import 'package:ui_example_1/screens/screen_two.dart';
import 'package:ui_example_1/screens/screen_zero.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomNavigator(
        navigatorKey: navigatorKey,
          pageRoute: PageRoutes.materialPageRoute,
          home: buildBody()),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(icon: Icon(Icons.email),onPressed: (){
                  setState(() {
                    _index = 0;
                  });
                },iconSize: 35,),
                IconButton(icon: Icon(Icons.email),onPressed: (){
                  setState(() {
                    _index = 1;
                  });
                },iconSize: 35,),
                IconButton(icon: Icon(Icons.email),onPressed: (){
                  setState(() {
                    _index = 2;
                  });
                },iconSize: 35,),
                IconButton(icon: Icon(Icons.email),onPressed: (){
                  setState(() {
                    _index = 3;
                  });
                },iconSize: 35,),
                IconButton(icon: Icon(Icons.email),onPressed: (){
                  setState(() {
                    _index = 4;
                  });
                },iconSize: 35,),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    if(_index == 0){
      return ScreenZero();
    }else if(_index == 1){
      return ScreenOne();
    }else if(_index == 2){
      return ScreenTwo();
    }else if(_index == 3){
      return ScreenThree();
    }else if(_index == 4){
      return ScreenFour();
    }

  }
}
