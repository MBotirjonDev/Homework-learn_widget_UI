
import 'package:flutter/material.dart';

class Uyishi extends StatefulWidget {
  const Uyishi({Key? key}) : super(key: key);

  @override
  _UyishiState createState() => _UyishiState();
}

class _UyishiState extends State<Uyishi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.9),
        toolbarHeight: 60,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 90.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                width: 60.0,
                height: 55.0,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjJCkGq1Gn-jeACJ3fypRuTLY6vccoergcwQ&usqp=CAU",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              height: 150.0,
              width: 250.0,
              child: Text(
                "Find the best coffee for you",
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 50.0,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 19.0, right: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Find Your Coffee...",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              height: 30.0,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Text(
                            "Coppuccino",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Text("Espresso",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Text("Latte",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Text("NesCoffee",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Text("Italliano",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
              height: 220.0,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    const Color.fromRGBO(105, 105, 105, 1),
                                    const Color.fromRGBO(0, 0, 0, 1),
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                              borderRadius: BorderRadius.circular(15.0)),
                          height: 220.0,
                          width: 145.0,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "⭐️ 4.2",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  margin: EdgeInsets.all(12.0),
                                  height: 120.0,
                                  width: 130.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8F5BMMd7jvy83_r0bUw4WxdpEQRIckoV4cA&usqp=CAU"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Cappuchino",
                                    style: TextStyle(
                                        letterSpacing: 0.8,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 13.0),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Whit Oat Milk",
                                    style: TextStyle(
                                        letterSpacing: 0.8,
                                        color: Colors.white,
                                        fontSize: 8),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          right: 45.0, left: 5.0, top: 20.0),
                                      child: Text(
                                        "💲 4.20",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15.0),
                                      height: 25.0,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    const Color.fromRGBO(105, 105, 105, 1),
                                    const Color.fromRGBO(0, 0, 0, 1),
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                              borderRadius: BorderRadius.circular(15.0)),
                          height: 220.0,
                          width: 145.0,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "⭐️ 4.5",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  margin: EdgeInsets.all(12.0),
                                  height: 120.0,
                                  width: 130.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm8vFCZdSSMUDUEgM0Lk1LdRHiydkyQyFGsQ&usqp=CAU"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Espresso",
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 13.0),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Whit Chocolate",
                                    style: TextStyle(
                                        letterSpacing: 0.8,
                                        color: Colors.white,
                                        fontSize: 8),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          right: 45.0, left: 5.0, top: 20.0),
                                      child: Text(
                                        "💲 3.19",
                                        style: TextStyle(
                                            letterSpacing: 0.8,
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15.0),
                                      height: 25.0,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.topLeft,
              child: Text(
                "Special for you",
                style: TextStyle(
                    fontSize: 17, letterSpacing: 0.8, color: Colors.white),
              ),
            ),
            Container(
              height: 160.0,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(105, 105, 105, 1),
                              const Color.fromRGBO(0, 0, 0, 1),
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.decal),
                      ),
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 145.0,
                            width: 155.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP8DDuIr8DDEr8v2gaQoF3Yt5mey0rEXq5TCZ15KTnFJsHr6zPjRxGCwqoIWc0l-SjdDE&usqp=CAU"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0, left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "5 Coffe Beans You ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text("Must Try!",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.brown),
                                  height: 50.0,
                                  width: 50.0,
                                  margin:
                                      EdgeInsets.only(top: 30.0, left: 10.0),
                                  child: Icon(
                                    Icons.coffee,
                                    size: 50.0,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Colors.grey[800],
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.white),
                  Icon(Icons.shopping_basket, color: Colors.white),
                  Icon(Icons.favorite_border, color: Colors.red),
                  Icon(Icons.person_pin, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
