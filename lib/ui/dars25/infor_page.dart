

import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            //height: 170.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/3e3954d7c8dd8c67d2be472346b350e2/large.jpg",
                ),
              ),
            ),
          ),
          SizedBox(width: 125.0),
          Icon(Icons.more),
          SizedBox(width: 10.0),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://s.aolcdn.com/commerce/autodata/images/USC70TSC024B021001.jpg",
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "360",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tesla S model future",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  """Up to 10 teraflops of processing power\nenables in-car gaming on par with today's\nnewest consoles.\n
Electric Powertrain
Long Range and Plaid platforms unite powertrain and battery technologies for unrivaled performance, range and efficiency. New module and pack thermal architecture allows faster charging and gives you more power and endurance in all conditions.""",
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      //fontSize: 28.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "<5 sec",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "+250 mt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    " \$ 100.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "Speed",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "price",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                "Reserver now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
