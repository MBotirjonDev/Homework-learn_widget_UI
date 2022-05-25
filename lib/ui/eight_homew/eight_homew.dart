import 'package:flutter/material.dart';

class Vazifa8 extends StatefulWidget {
  const Vazifa8({Key? key}) : super(key: key);

  @override
  _Vazifa8State createState() => _Vazifa8State();
}

class _Vazifa8State extends State<Vazifa8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.yellow,
            elevation: 0,
            title: Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
            expandedHeight: 200.0,
            toolbarHeight: 178.0,
            actions: [
              Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              SizedBox(width: 20.0),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                height: 90.0,
                width: 90.0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg",
                  ),
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  height: 170.0,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(6.0),
                        width: 230.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index"),
                              fit: BoxFit.cover),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shonda Rhymes",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Shonda deseribes whait fuels her passion.",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, top: 5.0, bottom: 15.0),
                      child: Text(
                        "Popular Courses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 250.0,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/${index}+1"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 2,
                                offset: Offset(10, 20)),
                          ],
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 180.0,
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 1, bottom: 1, left: 14),
                              child: Text(
                                "Console Developmente",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 1, bottom: 1, left: 14),
                              child: Text(
                                "Basics with Unity",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 160.0),
                      Icon(Icons.home,size: 30.0),
                      Icon(Icons.search,size: 30.0),
                      Icon(Icons.shopping_basket,size: 30.0),
                      Icon(Icons.favorite_border,size: 30.0),
                      Icon(Icons.person_pin,size: 30.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
