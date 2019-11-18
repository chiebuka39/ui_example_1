import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_example_1/screens/tab_screen.dart';
import 'package:ui_example_1/view_models/app_state.dart';

void main() => runApp(MyApp());

GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        navigatorKey: mainNavigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
         fontFamily: 'DINPro',
          primarySwatch: Colors.blue,
        ),
        home: TabScreen(),
      ), providers: <SingleChildCloneableWidget>[
        ChangeNotifierProvider(builder: (_) => AppState(),)
    ],
    );
  }
}


