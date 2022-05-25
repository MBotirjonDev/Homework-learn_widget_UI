

import 'package:flutter/material.dart';

class FlutterDart extends StatelessWidget {
  const FlutterDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter-pro",
        ),
      ),
      body: c(),
    );
  }

  Widget c() {
    return Row(
      children: [
        Container(
          height: 823.0,
          width: 60.0,
          //color: Colors.redAccent,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.orange,
                  child: Text(
                    "😊",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    "F",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text(
                    "L",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    "U",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: Text(
                    "T",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.teal,
                  child: Text(
                    "T",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.cyan,
                  child: Text(
                    "E",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: Text(
                    "R",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  width: 60.0,
                ),
                flex: 1,
              ),
            ],
          ),
        ),
        Container(
          height: 823.0,
          width: 365.0,
          //color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 70.0,
                width: 365.0,
                //color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "D",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      height: 70.0,
                      width: 60.0,
                      color: Colors.red,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "A",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      height: 70.0,
                      width: 60.0,
                      color: Colors.orange,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "R",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      height: 70.0,
                      width: 60.0,
                      color: Colors.blue,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "T",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      height: 70.0,
                      width: 60.0,
                      color: Colors.teal,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 70.0,
                width: 365.0,
                //color: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
