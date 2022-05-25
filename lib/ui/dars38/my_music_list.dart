import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/dars38/album_page.dart';

class MyMusicList38 extends StatefulWidget {
  @override
  _MyMusicList38State createState() => _MyMusicList38State();
}

class _MyMusicList38State extends State<MyMusicList38> {
  bool holat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              //color: Colors.cyan,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://i.pinimg.com/originals/17/28/76/172876e3ef491d0bd9e9de1b0ded5233.png",
                ),
              ),
            ),
            height: 185.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 29.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 29.0),
                Text(
                  "MY MUSIC LIST",
                  style: TextStyle(fontSize: 21.0, color: Colors.white),
                ),
                SizedBox(width: 29.0),
                IconButton(
                  iconSize: 29.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlbumPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.0),
            height: 70.0,
            //width: MediaQuery.of(context).size.width,
            color: Colors.grey[200],
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Up next",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_drop_down, size: 29.0),
                SizedBox(width: 200.0),
                Icon(Icons.music_note),
                Icon(Icons.library_music_outlined),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://source.unsplash.com/random/30",
                        ),
                      ),
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4th Dimension",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Kids See Ghosts",
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 80.0),
                  Text("2:45"),
                  SizedBox(width: 5.0),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.orange[300],
                    onPressed: () {},
                    child: Icon(Icons.music_video),
                  ),
                  SizedBox(width: 5.0),
                  Icon(Icons.more_vert_outlined),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://source.unsplash.com/random/70",
                        ),
                      ),
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blue Oranguade",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "TXT",
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 120.0),
                  Text("3:55"),
                  SizedBox(width: 5.0),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://source.unsplash.com/random/102",
                        ),
                      ),
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heavydirtysoul",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Twenty One Pilots",
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 130.0),
                  Text("3:55"),
                  SizedBox(width: 5.0),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://source.unsplash.com/random/101",
                        ),
                      ),
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "One Kiss",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Calvin Harris & Duo Lipa",
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 100.0),
                  Text("3:34"),
                  SizedBox(width: 5.0),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://source.unsplash.com/random/100",
                        ),
                      ),
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I Love It              ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lil pump",
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 130.0),
                  Text("2:08"),
                  SizedBox(width: 5.0),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            child: Column(
              children: [
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.stopwatch),
                    SizedBox(width: 7.0),
                    Text("Station Autoplay"),
                    SizedBox(width: 7.0),
                    Switch(
                      value: holat,
                      onChanged: (v) {
                        setState(() {
                          debugPrint(v.toString());
                          holat = v;
                        });
                      },
                    ),
                  ],
                ),
                Text("New music based on what's playing"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
