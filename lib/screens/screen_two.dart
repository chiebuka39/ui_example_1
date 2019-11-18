import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.redAccent,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "NOTIFICATION",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 80,
                        child: Center(
                            child: Text("INBOX",
                                style: TextStyle(color: Colors.black)))),
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.redAccent, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            "assets/images/avatar1.png",
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Jennifer Tyler (4)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Its going well, How about you",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Spacer(),
                        Text("2m"),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            "assets/images/avatar1.png",
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                                width: 200,
                                child: Text(
                                  "John Milano commented on your photo",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "So cute I love It",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          child: Center(child: Text("Follow", style: TextStyle(color: Colors.white),)),
                          height: 40,
                          decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
