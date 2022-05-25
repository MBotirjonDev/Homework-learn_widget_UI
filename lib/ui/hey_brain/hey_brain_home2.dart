import 'package:flutter/material.dart';
import 'dart:math' as math;

class Hey_brian2 extends StatefulWidget {
  const Hey_brian2({Key? key}) : super(key: key);

  @override
  _Hey_brian2State createState() => _Hey_brian2State();
}

class _Hey_brian2State extends State<Hey_brian2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 220.0),
                  child: Text(
                    "Statics",
                    style: TextStyle(
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Stories(),
          ),
          Activities(),
          FooterStatics(),
          Map(),
          Likes(),
          FooterBar(),
        ],
      ),
    );
  }
}

class FooterBar extends StatelessWidget {
  const FooterBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 180.0),
        Icon(Icons.home,size: 30.0),
        Icon(Icons.stacked_bar_chart,size: 30.0),
        Icon(Icons.chat_sharp,size: 30.0),
        Icon(Icons.person_pin,size: 30.0),
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              width: 40.0,
              height: 35.0,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQ-YHX2i3RvTDDmpfnde4qyb2P8up7Wi3Ww&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Likes extends StatelessWidget {
  const Likes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "View Detiels",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5),
                ),
              ),
              Transform.rotate(
                angle: 180 * math.pi / 180,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 88.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  "10",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(),
                child: Icon(Icons.comment),
              ),
              Container(
                child: Text("2"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Map extends StatelessWidget {
  const Map({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 13.0),
      width: double.infinity,
      height: 200.0,
      child: (Image.network(
        "https://docs.mapbox.com/help/img/directions/map-matching.gif",
        fit: BoxFit.fill,
      )),
    );
  }
}

class FooterStatics extends StatelessWidget {
  const FooterStatics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 28.0, top: 50.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  width: 60.0,
                  height: 55.0,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQ-YHX2i3RvTDDmpfnde4qyb2P8up7Wi3Ww&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50.0, right: 125.0),
                    child: Text(
                      "Brian",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Text(
                      "MAY 22,2019 AT 1,39 PM",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 50.0, left: 50.0),
                child: Icon(
                  Icons.run_circle,
                  color: Colors.deepOrangeAccent,
                  size: 35.0,
                )),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 220.0, top: 20.0),
              child: Text(
                "Morning Run",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Distance",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Elev Gain",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Time",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Avg Oace",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10.0, top: 5.0),
                    child: Text(
                      "31.00km",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 35.0, top: 5.0),
                    child: Text(
                      "231m",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10.0, top: 5.0),
                    child: Text(
                      "2:23",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 5.0),
                    child: Text(
                      "4:37/km",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class Activities extends StatelessWidget {
  const Activities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 28.0,
          ),
          child: Text(
            "Latest Activities",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 1.5),
          ),
        )
      ],
    );
  }
}

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 60.0,
              width: 90.0,
              child: Image.network(
                "https://images.vexels.com/media/users/3/198905/isolated/preview/4b7578d60bd6b3f5f56a3d6d6b34e86e-male-swimmer-character-black-and-white.png",
              ),
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            Container(
              child: Text(
                "Swiming",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.5),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 60.0,
              width: 90.0,
              child: Image.network(
                "https://p3r.org/media/W1siZiIsIjIwMTkvMDcvMjYvNXZmdmVzNXJmb19ydW5uaW5nX21hbi5wbmciXV0/running_man.png",
              ),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            Container(
              child: Text(
                "Running",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.5),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 60.0,
              width: 90.0,
              child: Image.network(
                "https://pngimg.com/uploads/football_player/football_player_PNG84.png",
              ),
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            Container(
              child: Text(
                "Footbal",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.5),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 60.0,
              width: 90.0,
              child: Image.network(
                "https://cdni.iconscout.com/illustration/premium/thumb/basketball-players-playing-basketball-3359808-2809297.png",
              ),
              decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            Container(
              child: Text(
                "Basketball",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
