import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              elevation: 0,
              leading: BackButton(color: Colors.black,),
              backgroundColor: Colors.white,
              title: Text("Medical Notes", style: TextStyle(color: Colors.black),),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Medical Records",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    FlatButton(child: Row(children: <Widget>[
                      Text("Show More", style: TextStyle(color: Colors.blueAccent),),
                      Icon(Icons.navigate_next)
                    ],),onPressed: (){},)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([

                Row(
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))
                        ),
                        child: Align(child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("A", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                        ),alignment: Alignment.center,)
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
              sliver: SliverList(
                delegate: new SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/box1.svg", height: 55,),
                              Positioned(child: Text("Aa", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.amber),), bottom: 4,right: 4,)
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Health Check Follow-up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(height: 2,),
                              Text("Document, Small file", style: TextStyle(fontSize: 14, color: Colors.grey),),
                              Text("March 3, 2019", style: TextStyle(fontSize: 14, color: Colors.grey),)
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.more_horiz),)
                        ],
                      ),
                    );
                  },
                  childCount: 3,

                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([

                Row(
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))
                        ),
                        child: Align(child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("B", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                        ),alignment: Alignment.center,)
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
              sliver: SliverList(
                delegate: new SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/box1.svg", height: 55,),
                              Positioned(child: Text("Aa", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.amber),), bottom: 4,right: 4,)
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Health Check Follow-up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(height: 2,),
                              Text("Document, Small file", style: TextStyle(fontSize: 14, color: Colors.grey),),
                              Text("March 3, 2019", style: TextStyle(fontSize: 14, color: Colors.grey),)
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.more_horiz),)
                        ],
                      ),
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

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(
        size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
