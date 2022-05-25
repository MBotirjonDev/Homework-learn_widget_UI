import 'package:flutter/material.dart';
import 'dart:math';

class Hey_Brian extends StatefulWidget {
  const Hey_Brian({Key? key}) : super(key: key);

  @override
  _Hey_BrianState createState() => _Hey_BrianState();
}

class _Hey_BrianState extends State<Hey_Brian> {
  Color randomColor() =>
      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          TopBar(),
          TopBarSubtitle1(),
          TopBarSubtitle2(),
          Press(),
          SizedBox(height: 30.0),
          Text("________________________________________",),
          FooterBar()
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
    return Container(
      padding: EdgeInsets.only(top: 70.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 100.0),
          
          
          Icon(Icons.home,size: 30.0),
          Icon(Icons.stacked_bar_chart, size: 30.0),
          Icon(Icons.chat_sharp, size: 30.0),
          Icon(Icons.person_pin, size: 30.0),
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
      ),
    );
  }
}

class Press extends StatelessWidget {
  const Press({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0, left: 26.0, right: 26.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 23, top: 12, bottom: 5),
                          child: Text(
                            "Swimming",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            height: 90.0,
                            width: 150.0,
                            child: Image.network(
                              "https://images.vexels.com/media/users/3/198905/isolated/preview/4b7578d60bd6b3f5f56a3d6d6b34e86e-male-swimmer-character-black-and-white.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 23, top: 12, bottom: 5),
                          child: Text(
                            "Running",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 90.0,
                          width: 150.0,
                          child: Image.network(
                            "https://p3r.org/media/W1siZiIsIjIwMTkvMDcvMjYvNXZmdmVzNXJmb19ydW5uaW5nX21hbi5wbmciXV0/running_man.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 23, top: 12, bottom: 5),
                          child: Text(
                            "Footbal",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 90.0,
                          width: 150.0,
                          child: Image.network(
                            "https://pngimg.com/uploads/football_player/football_player_PNG84.png",
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 23, top: 12, bottom: 5),
                          child: Text(
                            "BaskettBall",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 90.0,
                          width: 150.0,
                          child: Image.network(
                            "https://cdni.iconscout.com/illustration/premium/thumb/basketball-players-playing-basketball-3359808-2809297.png",
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ClipRRect(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 23, top: 12, bottom: 5),
                          child: Text(
                            "Cycling",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 90.0,
                          width: 150.0,
                          child: Image.network(
                            "https://www.sportsengine.com/sites/default/files/images/olympic-cycling-sport-directory-hero-foreground_0.png",
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                Container(
                  child: ClipRRect(
                      child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 23, top: 12, bottom: 5),
                        child: Text(
                          "Tennis",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: 150.0,
                        child: Image.network(
                          "https://www.pngkit.com/png/full/286-2869484_tennis-player-png-photo-playing-tennis-png.png",
                        ),
                      ),
                    ],
                  )),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopBarSubtitle2 extends StatelessWidget {
  const TopBarSubtitle2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 202.0),
      child: Text(
        "up to today?",
        style:
            TextStyle(fontSize: 18.0, letterSpacing: 2.0, color: Colors.grey),
      ),
    );
  }
}

class TopBarSubtitle1 extends StatelessWidget {
  const TopBarSubtitle1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 195.0, top: 10.0),
      child: Text(
        "What are you",
        style:
            TextStyle(fontSize: 18.0, letterSpacing: 2.0, color: Colors.grey),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Text(
            "Hey Brian,",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(25, 25, 112, 1),
              backgroundColor: Color.fromRGBO(106, 90, 205, 0.1),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 90.0),
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
        )
      ],
    );
  }
}
