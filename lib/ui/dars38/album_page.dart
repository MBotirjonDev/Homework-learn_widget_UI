import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 300.0,
              color: Colors.pink[100],
              child: Column(
                children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 70.0),
                        Text(
                          "Album",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert_outlined),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 140.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://source.unsplash.com/random",
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.0),
                      Column(
                        children: [
                          Text(
                            "Kids See\nGhosts",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Kids See Ghosts\n2018 - Hip-Hop Pop",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Row(
                  children: [
                    Text(
                      "7 Tracks ~ 23 Minutes",
                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    ),
                    SizedBox(width: 150.0),
                    Icon(CupertinoIcons.stopwatch),
                    SizedBox(width: 5.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(50.0, 30.0),
                        primary: Colors.orange[200],
                      ),
                      onPressed: () {},
                      child: Text(
                        "Play All",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //color: Colors.cyanAccent,
              height: 565.0,
              child: ListView.builder(
                itemCount: 11,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          index < 9
                              ? Text("0${index + 1}")
                              : Text("${index + 1}"),
                          SizedBox(width: 5.0),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://source.unsplash.com/random/$index",
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
                                "Feel the Love (feat. Pusha T)",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2:45",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                              ),
                            ],
                          ),
                          SizedBox(width: 80.0),
                          Icon(Icons.more_vert_outlined),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
