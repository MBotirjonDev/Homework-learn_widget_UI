import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/dars29/second_page.dart';

class YangiPageMavzu extends StatefulWidget {
  //const YangiPageMavzu({Key? key}) : super(key: key);

  @override
  _YangiPageMavzuState createState() => _YangiPageMavzuState();
}

class _YangiPageMavzuState extends State<YangiPageMavzu> {
  List<Icon> _listOfIcon = List.generate(
    20,
    (index) => Icon(Icons.keyboard_arrow_down),
  );
  int _currnetIndexOfBottomBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPageChat(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.search,
                        size: 27.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://source.unsplash.com/random"),
                        radius: 35.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adina Nurrahma",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                            ),
                          ),
                          Text(
                            "Trust you feelings, be a good\nhuman belings",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.0),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "____________________________________________________",
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 70.0,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.moon_fill,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Dark mode",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(width: 180.0),
                      Switch(value: true, onChanged: (v){  }),
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Account ",
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedTextColor: Colors.black,
                leading: Icon(Icons.account_box),
                collapsedIconColor: Colors.blue,
                children: [
                  Container(
                    height: 60.0,
                    child: Text(
                      "Information",
                    ),
                  ),
                ],
                textColor: Colors.white,
                iconColor: Colors.blue,
                tilePadding: EdgeInsets.all(10),
              ),
              ExpansionTile(
                title: Text(
                  "Notification ",
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedTextColor: Colors.black,
                leading: Icon(Icons.notifications_off_outlined),
                collapsedIconColor: Colors.blue,
                children: [
                  Container(
                    height: 60.0,
                    child: Text(
                      "Information",
                    ),
                  ),
                ],
                textColor: Colors.white,
                iconColor: Colors.blue,
                tilePadding: EdgeInsets.all(10),
              ),
              ExpansionTile(
                title: Text(
                  "Chat settings ",
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedTextColor: Colors.black,
                leading: Icon(Icons.chat_outlined),
                collapsedIconColor: Colors.blue,
                children: [
                  Container(
                    height: 60.0,
                    child: Text(
                      "Information",
                    ),
                  ),
                ],
                textColor: Colors.white,
                iconColor: Colors.blue,
                tilePadding: EdgeInsets.all(10),
              ),
              ExpansionTile(
                title: Text(
                  "Data and Storage ",
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedTextColor: Colors.black,
                leading: Icon(Icons.storage_outlined),
                collapsedIconColor: Colors.blue,
                children: [
                  Container(
                    height: 60.0,
                    child: Text(
                      "Information",
                    ),
                  ),
                ],
                textColor: Colors.white,
                iconColor: Colors.blue,
                tilePadding: EdgeInsets.all(10),
              ),
              ExpansionTile(
                title: Text(
                  "Privacy and Security ",
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedTextColor: Colors.black,
                leading: Icon(Icons.security_outlined),
                collapsedIconColor: Colors.blue,
                children: [
                  Container(
                    height: 60.0,
                    child: Text(
                      "Information",
                    ),
                  ),
                ],
                textColor: Colors.white,
                iconColor: Colors.blue,
                tilePadding: EdgeInsets.all(10),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.blue,
                        size: 28.0,
                      ),
                      SizedBox(width: 26.0),
                      Text(
                        "About info",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.messenger),
          icon: Icon(Icons.messenger_outline_outlined),
          // label: "Home",
          tooltip: "Chat",
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.lock_clock),
          icon: Icon(Icons.lock_clock_outlined),
          // label: "Search",
          tooltip: "Clock",
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.call),
          icon: Icon(Icons.call_made),
          // label: "Contacts",
          tooltip: "Calls",
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person),
          icon: Icon(Icons.person_off),
          // label: "Settings",
          tooltip: "Profile",
          backgroundColor: Colors.green,
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currnetIndexOfBottomBar,
      onTap: (menuIndex) {
        setState(() {
          _currnetIndexOfBottomBar = menuIndex;
        });
      },
    );
  }
}
