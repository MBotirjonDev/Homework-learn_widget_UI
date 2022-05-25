import 'package:flutter/material.dart';

class BuyPageW extends StatefulWidget {
  const BuyPageW({Key? key}) : super(key: key);

  @override
  _BuyPageWState createState() => _BuyPageWState();
}

class _BuyPageWState extends State<BuyPageW> {
  int narx1 = 7, soni1 = 1, narx2 = 50, son2 = 1, narx3 = 1, son3 = 1;
  void qosh() {
    setState(() {
      narx1 += 7;
      soni1++;
    });
  }

  void ayr() {
    setState(() {
      narx1 -= 7;
      soni1--;
    });
  }

//////////////////
  void qosh2() {
    setState(() {
      narx2 += 50;
      son2++;
    });
  }

  void ayr2() {
    setState(() {
      narx2 -= 50;
      son2--;
    });
  }

  //////////////////
  void qosh3() {
    setState(() {
      narx3 += 1;
      son3++;
    });
  }

  void ayr3() {
    setState(() {
      narx3 -= 1;
      son3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        actions: [
          SizedBox(width: 22.0),
          Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Basket",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black),
            ),
          ),
          Spacer(),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 22)
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Container(
                height: 150.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: double.infinity,
                      width: 120.0,
                      child: Image.network(
                        "https://media.istockphoto.com/photos/water-bottle-on-white-background-picture-id1126933760?k=20&m=1126933760&s=612x612&w=0&h=XiYk9aT68Iru-OeENe1JXi0-8BU8wXKKj7dfgkbjy9A=",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 190.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Masafi water",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Bottle 18,9 L",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              Text(
                                "\$$narx1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.white,
                                  onPressed: ayr,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Text(
                                "$soni1",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.lightBlueAccent,
                                  onPressed: qosh,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 150.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: double.infinity,
                      width: 120.0,
                      child: Image.network(
                        "https://media.istockphoto.com/photos/small-and-big-water-bottles-on-white-picture-id961494486",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 190.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Masafi water",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Bottle 18,9 L",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              Text(
                                "\$$narx2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.white,
                                  onPressed: ayr2,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Text(
                                "$son2",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.lightBlueAccent,
                                  onPressed: qosh2,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 150.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: double.infinity,
                      width: 120.0,
                      child: Image.network(
                        "https://cdn.mos.cms.futurecdn.net/3KnPinofHaKaQDaeRov3Qg-320-80.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 190.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Masafi water",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Bottle 18,9 L",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              Text(
                                "\$$narx3",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.white,
                                  onPressed: ayr3,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Text(
                                "$son3",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                child: FloatingActionButton(
                                  splashColor: Colors.amber,
                                  backgroundColor: Colors.lightBlueAccent,
                                  onPressed: qosh3,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.pink[100]),
                alignment: Alignment.center,
                height: 100.0,
                width: double.infinity,
                child: Card(
                  color: Colors.transparent,
                  shadowColor: Colors.transparent,
                  child: ListTile(
                    title: Text(
                      "\$58",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    trailing: Container(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Pay"),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
