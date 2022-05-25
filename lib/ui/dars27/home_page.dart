import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/dars27/hello_page.dart';
import 'package:homework/ui/dars27/style_page.dart';

class HomePageBarber extends StatefulWidget {
  const HomePageBarber({Key? key}) : super(key: key);

  @override
  _HomePageBarberState createState() => _HomePageBarberState();
}

class _HomePageBarberState extends State<HomePageBarber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StylePage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.search, size: 25.0),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dars27(),
                      ),
                    );
                  },
                  icon: Icon(Icons.menu, size: 25.0),
                ),
              ],
            ),
            SizedBox(height: 100.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey,",
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      "Derek",
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text("__________________________________________"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://library.kissclipart.com/20180908/bjw/kissclipart-hair-washing-icon-clipart-barber-hair-washing-hair-08822a73d33cd86e.png",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Hair washing",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 19.0),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                  "https://thumbs.dreamstime.com/z/straight-razor-blade-barbershop-icon-flat-web-sign-symbol-logo-label-set-170786226.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Classic shaving",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 19.0),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX24136009.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Hair care",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 19.0),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://i2.wp.com/man2man.boohooman.com/wp-content/uploads/2018/11/mustache.png?fit=1024%2C1024&ssl=1",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Beard trimming",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 19.0),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
