import 'package:agc_app/post_tile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'UpdateCard.dart';

class AppWall extends StatefulWidget {
  @override
  State<AppWall> createState() => _AppWallState();
}

class _AppWallState extends State<AppWall> {

  final List<String> tabs = <String>['    All    ', 'category','category', 'category', 'category', 'category'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 9.5.h,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 8.0),
            child: Icon(
              Icons.circle,
              color: Colors.green,
              size: 8.h,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                  size: 4.5.h,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.pinkAccent,
                  size: 4.5.h,
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(100,60),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              indicatorWeight: 1,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 0.0,),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
                //border: Border.all(color: Colors.black)
              ),
              tabs: tabs.map((String name) => Container(
                width: 18.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.green,
                    border: Border.all(color: Colors.black)
                ),
                child: Tab(
                    height:4.h,text: name),
              )).toList(),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TabList(),
              SizedBox(
                height: 0.8.h,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 13.5.h,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 8.0,
                              ),
                              Image.asset(
                                "assets/roundimage.png",
                                height: 7.5.h,
                                width: 7.5.h,
                              ),
                              Text(
                                "What's Happening?",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 17.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 3.h,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.gif_box_outlined,
                                size: 3.h,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.emoji_emotions_outlined,
                                size: 3.h,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Container(
                                height: 35.0,
                                width: 72.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.green,
                                ),
                                child: Center(
                                    child: Text(
                                  "Post",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(14.0),
                      height: 23.h,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Jankari Updates",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                UpdateCard(),
                                SizedBox(
                                  width: 8.0,
                                ),
                                UpdateCard(),
                                SizedBox(
                                  width: 8.0,
                                ),
                                UpdateCard(),
                                SizedBox(
                                  width: 8.0,
                                ),
                                UpdateCard(),
                                SizedBox(
                                  width: 8.0,
                                ),
                                UpdateCard(),
                                SizedBox(
                                  width: 8.0,
                                ),
                                UpdateCard(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    PostTile(
                        name: "Ashish Kumar",
                        username: "ashkum",
                        imageUrl: 'assets/burger.png'),
                    PostTile(name: "Kundan", username: "kd", imageUrl: ""),
                    PostTile(
                        name: "Abhishek",
                        username: "shazda",
                        imageUrl: 'assets/agri.jpeg'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 7.9.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 3.h,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey,
                    size: 3.h,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.grey,
                    size: 3.h,
                  ),
                  Text(
                    "AG+",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.grey,
                    size: 3.h,
                  ),
                  Text(
                    "Jankari",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                    size: 3.h,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
