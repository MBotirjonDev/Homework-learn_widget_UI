import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/dars28/messenger_page.dart';

class InstagramHomePage extends StatelessWidget {
  String name = "mahamadaliyev";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          firstElement(context),
          secondElement(context),
          thirdElement(context),
        ],
      ),
    );
  }

  Widget firstElement(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                fontFamily: 'Satisfy',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessengerPage(name: name,),
                  ),
                );
              },
              icon: Icon(
                Icons.messenger_outline_outlined,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ],
        ),
      );

  Widget secondElement(BuildContext context) => Container(
        height: 80.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor:
                        Colors.indigo[(Random().nextInt(8) + 1) * 100],
                  ),
                  Text(
                    name.length <= 7 ? name : name.substring(0, 6) + "...",
                  ),
                ],
              ),
            );
          },
        ),
      );

  Widget thirdElement(BuildContext context) => Container(
        height: 600.0,
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.pink[(Random().nextInt(8) + 1) * 100],
              ),
              margin: EdgeInsets.all(5.0),
              height: 50.0,
            );
          },
        ),
      );
}
