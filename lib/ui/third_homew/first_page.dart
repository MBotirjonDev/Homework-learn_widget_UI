import 'package:flutter/material.dart';

class MilanPage extends StatefulWidget {
  const MilanPage({Key? key}) : super(key: key);

  @override
  _MilanPageState createState() => _MilanPageState();
}

class _MilanPageState extends State<MilanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 450.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://www.gianvitorossi.com/media/catalog/product/G/7/G70510.60RIC.VILMOUS_3.png",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 60.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffe1d9ce),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 38.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 38.0),
                    child: Text(
                      "Exsaptional\nModern Clothings",
                      style: TextStyle(
                        fontSize: 29.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: EdgeInsets.only(left: 38.0),
                    child: Text(
                      "__________",
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Padding(
                    padding: EdgeInsets.only(left: 38.0),
                    child: Text(
                      "Shop for exsaptional modern clothings\nfor your everyday life",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(height: 38.0),
                  Padding(
                    padding: EdgeInsets.only(left: 38.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d3a40),
                        fixedSize: Size(260.0, 50.0),
                      ),
                      child: Text(
                        "Go Shopping",
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 38.0),
                  Padding(
                    padding: EdgeInsets.only(left: 38.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 3.0,
                          backgroundColor: Color(0xff5d594d),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            border: Border.all(
                              color: Color(0xff9da097),
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 6.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Color(0xff5e574d),
                              radius: 3.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          radius: 3.0,
                          backgroundColor: Color(0xff5d594d),
                        ),
                        SizedBox(width: 5.0),
                        CircleAvatar(
                          radius: 3.0,
                          backgroundColor: Color(0xff5d594d),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
