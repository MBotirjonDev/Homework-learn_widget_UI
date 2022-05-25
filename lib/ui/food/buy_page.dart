import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  //const BuyPage({Key? key}) : super(key: key);
  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  double _sliderCount = 5.0;
  double _sliderCounN = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel),
                ),
                SizedBox(
                  width: 150.0,
                ),
                Container(
                  child: Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                ),
                Container(
                  child: Text(
                    "Reset all",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Text(
                      "Distance",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 260.0,
                ),
                Text("$_sliderCount"),
              ],
            ),
            Slider(
              label: "$_sliderCount",
              value: _sliderCount,
              min: 5.0,
              max: 15.0,
              divisions: 2,
              onChanged: (v) {
                setState(() {
                  _sliderCount = v;
                });
              },
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Text(
                      "Min 5",
                    ),
                  ),
                ),
                SizedBox(
                  width: 260.0,
                ),
                Text("Max 15"),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Text(
                      "Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 260.0,
                ),
                Text("10 - 70"),
              ],
            ),
            Slider(
              label: "$_sliderCounN",
              value: _sliderCounN,
              min: 0.0,
              max: 160.0,
              divisions: 16,
              onChanged: (v) {
                setState(() {
                  _sliderCounN = v;
                });
              },
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Text(
                      "Min 10 ",
                    ),
                  ),
                ),
                SizedBox(
                  width: 260.0,
                ),
                Text("Max 160"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Text(
                  "Cuisine",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Chiness",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Indian",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Thai",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Diet",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    color: Colors.green,
                    child: Text(
                      "Paleo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Kategonic",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Jollof Rich",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 70.0,
                    child: Text(
                      "Banku",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    //color: Colors.green,
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 120.0,
                    child: Text(
                      "Tuna Sandwich",
                      //style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Colors.red,),
                height: 50.0,
                width: 340.0,
                
                alignment: Alignment.center,
                child: Text(
                  "Apply Filter",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
