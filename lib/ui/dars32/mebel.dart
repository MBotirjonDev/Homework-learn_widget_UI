import 'package:flutter/material.dart';

class ChairInfo extends StatefulWidget {
  @override
  State<ChairInfo> createState() => _ChairInfoState();
}

class _ChairInfoState extends State<ChairInfo> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.star_border_outlined),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          "https://luxloungeefr.com/wp-content/uploads/2015/03/blue-custom.png"))),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Yellow Chair",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Text(
                    "Chairga gap yo'q zo'r yumshoq \nAll shunday deyilgan",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.deepOrange,
                      ),
                      Text("4.9 | 229 Review")
                    ],
                  )
                ],
              ),
            ),
            TabBar(
              labelColor: Colors.blue,
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              unselectedLabelColor: Color(0xff9c9696),
              unselectedLabelStyle: TextStyle(fontSize: 14.0),
              controller: _tabController,
              indicatorColor: Color(0xffe8e2e2),
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Shipping",
                ),
                Tab(
                  text: "FAq",
                ),
                Tab(
                  text: "Care",
                ),
                Tab(
                  text: "Warent",
                ),
              ],
            ),
            Container(
              height: 164,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deminsion:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Chair is very good furniture, Its not expancive, and comfortable, you need buy now",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Material:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Chair is very good furniture, Its not expancive, and comfortable, you need buy now",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    left: 140,
                    child: ElevatedButton(
                      
                      onPressed: () {},
                      child: Text(
                        "Buy now",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(100, 50),
                          ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: ""),
        ],
      ),
    );
  }
}
