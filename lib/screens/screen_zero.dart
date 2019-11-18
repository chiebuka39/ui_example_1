import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_example_1/models/record.dart';
import 'package:ui_example_1/screens/screen_one.dart';
import 'dart:math' as math;

import 'package:ui_example_1/screens/screen_two.dart';
import 'package:ui_example_1/view_models/app_state.dart';

class ScreenZero extends StatefulWidget {
  @override
  _ScreenZeroState createState() => _ScreenZeroState();
}

class _ScreenZeroState extends State<ScreenZero> {




  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(

          pinned: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Row(
            children: <Widget>[
              Spacer(),
              ClipOval(
                child: Image.asset(
                  "assets/images/avatar1.png",
                  height: 35,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Sammy",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
              Spacer(),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Medical Records",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 2,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Medical Records...'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,)
          ]),
        ),
        SliverList(
        delegate: SliverChildListDelegate([

          Row(
            children: <Widget>[
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25))
                ),
                child: Align(child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Most Recent", style: TextStyle(fontWeight: FontWeight.w600),),
                ),alignment: Alignment.centerRight,)
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ]),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 20, right: 20),
          sliver: SliverGrid(
            gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: .6

            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    Record record = appState.records[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenOne()));
                  },
                  child: Material(
                    child: Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(1)
                          ),
                        ),
                        new Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(record.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Text("Today", style: TextStyle(fontSize: 16, color: Colors.grey),)
                      ],
                    ),
                  ),
                );
              },
              childCount: 6,

            ),
          ),
        ),
        SliverList(
        delegate: SliverChildListDelegate([

          Row(
            children: <Widget>[
              Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25))
                  ),
                  child: Align(child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Last Week", style: TextStyle(fontWeight: FontWeight.w600),),
                  ),alignment: Alignment.centerRight,)
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ]),
        ),
        SliverPadding(
        padding: EdgeInsets.only(left: 20, right: 20),
        sliver: SliverGrid(
          gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: .6

          ),
          delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  Record record = appState.records[index +4];
              return Column(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(1)
                    ),
                  ),
                  new Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(record.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  SizedBox(height: 10,),
                  Text("Today", style: TextStyle(fontSize: 16, color: Colors.grey),)
                ],
              );
            },
            childCount: 6,

          ),
        ),
        ),
      ],
    ));
  }
}




