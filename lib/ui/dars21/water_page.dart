import 'package:flutter/material.dart';
import 'package:homework/ui/dars21/buy_page.dart';
import 'package:homework/ui/dars21/step.dart';
import 'package:homework/ui/food/buy_page.dart';

class WaterPage extends StatelessWidget {
  String? user;
  WaterPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 90.0,
              width: 400.0,
              child: Text(
                "Hello $user\nWater Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
          Form(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Search...",
                    labelText: "Search",
                    labelStyle: TextStyle(color: Colors.blue),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 320.0,
            width: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://media.istockphoto.com/vectors/financial-documents-online-market-and-cogwheel-icons-set-refill-water-vector-id1158550201",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Text(
                    "Catalog",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 235.0,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "see all",
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    //color: Colors.teal,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal,
                      ),
                      height: 150.0,
                      width: 150.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Bottels",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                              12.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              height: 50.0,
                              width: 120.0,
                              alignment: Alignment.center,
                              //color: Colors.white,
                              child: OutlinedButton(
                                child: Text(
                                  "Show all",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BuyPageW(),
                                      ));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    //color: Colors.teal,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.pinkAccent,
                      ),
                      height: 150.0,
                      width: 150.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Coolers",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                              12.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              height: 50.0,
                              width: 120.0,
                              alignment: Alignment.center,
                              //color: Colors.white,
                              child: Text(
                                "Show all",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    //color: Colors.teal,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal,
                      ),
                      height: 150.0,
                      width: 150.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Example",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                              12.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              height: 50.0,
                              width: 120.0,
                              alignment: Alignment.center,
                              //color: Colors.white,
                              child: Text(
                                "Show all",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.menu,
                  size: 39.0,
                ),
                SizedBox(
                  width: 40.0,
                ),
                Icon(
                  Icons.book_online_outlined,
                  size: 39.0,
                ),
                SizedBox(
                  width: 40.0,
                ),
                Icon(
                  Icons.hearing_outlined,
                  size: 39.0,
                ),
                SizedBox(
                  width: 40.0,
                ),
                Icon(
                  Icons.manage_accounts,
                  size: 39.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
