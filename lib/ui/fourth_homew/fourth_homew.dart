
import 'package:flutter/material.dart';

class PlusMinus extends StatefulWidget {
  const PlusMinus({Key? key}) : super(key: key);

  @override
  _PlusMinusState createState() => _PlusMinusState();
}

class _PlusMinusState extends State<PlusMinus> {
  num sanoq1 = 0;
  num sanoq2 = 0;
  num javob = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plus Minus"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 250.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      sanoq1++;
                    });
                  },
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Num",
                    ),
                    TextSpan(
                      text: " $sanoq1",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 250.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      sanoq1--;
                    });
                  },
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 250.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      sanoq2++;
                    });
                  },
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Num",
                    ),
                    TextSpan(
                      text: " $sanoq2",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 250.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      sanoq2--;
                    });
                  },
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
            ],
          ),
          Container(
              child: ElevatedButton(
            child: Container(
              child: Row(
                children: [
                  Text("Sum"),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(width: 3.0),
                  Icon(Icons.send)
                ],
              ),
            ),
            onPressed: () {
              setState(() {
                javob = sanoq2 + sanoq1;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              fixedSize: Size(100, 30),
            ),
          )),
          Container(
            child: RichText(
              text: TextSpan(
                text: "$javob",
                style: TextStyle(color: Colors.brown),
              ),
            ),
          )
        ],
      ),
    );
  }
}
