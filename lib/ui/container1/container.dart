import 'package:flutter/material.dart';

class ContainerH extends StatelessWidget {
  const ContainerH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Qo'shimcha uy ishi",
        ),
      ),
      body: Container(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 100.0,
                width: 400.0,
                color: Colors.red,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 100.0,
                width: 200.0,
                color: Colors.black,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 100.0,
                width: 400.0,
                color: Colors.blue,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 100.0,
                width: 200.0,
                color: Colors.yellow,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 100.0,
                width: 400.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
