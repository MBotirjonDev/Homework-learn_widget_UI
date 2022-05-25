import 'package:flutter/material.dart';

class Containersecond extends StatelessWidget {
  const Containersecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mahamadaliyev",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.tealAccent,
              height: 150.0,
              width: 400.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100.0,
                  width: 170.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100.0,
                  width: 170.0,
                  color: Colors.yellow,
                ),
              ],
            ),
            Container(
              color: Colors.tealAccent,
              height: 150.0,
              width: 400.0,
            ),
            Container(
              child: Text(
                "Salom Pirikomil !!!",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
