import 'package:flutter/material.dart';
import 'package:homework/ui/dars32/mebel.dart';


class CollectionFurniture extends StatefulWidget {
  const CollectionFurniture({Key? key}) : super(key: key);

  @override
  _CollectionFurnitureState createState() => _CollectionFurnitureState();
}

class _CollectionFurnitureState extends State<CollectionFurniture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              height: 255,
              color: Colors.grey.shade300,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            """Furniture that fits\nyour Style""",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 55,
                      width: 400,
                      // color: Colors.black,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search Furniture",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            //helperStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shop For"),
                        Text(
                          "See All",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 175,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: 90,
                                  width: 90,
                                  child:
                                      Image.asset("assets/images/chair.png")),
                              Text("Chair")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 90,
                                  width: 90,
                                  child: Image.asset("assets/images/bed.png")),
                              Text("Bed")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 90,
                                  width: 90,
                                  child: Image.asset("assets/images/sofa.png")),
                              Text("Sofa")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 90,
                                  width: 90,
                                  child:
                                      Image.asset("assets/images/table.png")),
                              Text("Table")
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Todays Deatail's"),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              color: Colors.grey.shade300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChairInfo()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: 180,
                      width: 280,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("   Chair starting from\n       33.99\$"),
                              Text(
                                "Exist in 002002",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            child: Image.asset("assets/images/chair.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 180,
                    width: 280,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("   Chair starting from\n       33.99\$"),
                            Text(
                              "Exist in 002002",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          child: Image.asset("assets/images/chair.png"),
                        )
                      ],
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
