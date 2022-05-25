import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class InfoPage extends StatelessWidget {
  String? img;
  InfoPage({
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: "1",
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    this.img!,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 35.0,
            left: 10.0,
            child: Row(
              children: [
                IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 145.0),
                Text(
                  "1/3",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            top: 150.0,
            right: 100.0,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                fixedSize: Size(40.0, 50.0),
                minimumSize: Size(50.0, 50.0),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 35.0,
            left: 15.0,
            right: 15.0,
            child: Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width - 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "http://source.unsplash.com/random",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Laminated",
                              style: TextStyle(fontSize: 28.0),
                            ),
                            Text(
                              "Louis Vuitton",
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.grey),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              "Ut do dolor ea dolore nulla qui",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey[300],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(height: 40.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ 6500",
                            style: TextStyle(fontSize: 27.0),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.brown,
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350.0,
            left: 70.0,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white)),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Laminated",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 450.0,
            right: 100.0,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                fixedSize: Size(40.0, 50.0),
                minimumSize: Size(50.0, 50.0),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
