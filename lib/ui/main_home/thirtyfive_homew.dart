import 'package:flutter/material.dart';
import 'package:homework/ui/dars35/game_instagram.dart';


import 'package:homework/ui/vaz2/first_page.dart';
import 'package:homework/ui/vaz2/second_page.dart';

class ThirtyFive extends StatefulWidget {
  @override
  _ThirtyFiveState createState() => _ThirtyFiveState();
}

class _ThirtyFiveState extends State<ThirtyFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homework for Flutter",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _homework(),
    );
  }

  Widget _homework() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.blue[300],
            margin: EdgeInsets.all(12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/images/homew.jpeg"),
              ),
              title: Text(
                "1",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("#homewBotirjon\nThemelar bo'yicha"),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameInstagram(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            color: Colors.blue[300],
            margin: EdgeInsets.all(12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/images/homew.jpeg"),
              ),
              title: Text(
                "2 ",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("#homewBotirjon\nThemelar bo'yicha"),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondLes(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
