import 'package:flutter/material.dart';

import 'package:homework/ui/hey_brain/hey_brain_home.dart';
import 'package:homework/ui/hey_brain/hey_brain_home2.dart';

class MainHomeSix extends StatefulWidget {
  @override
  _MainHomeSixState createState() => _MainHomeSixState();
}

class _MainHomeSixState extends State<MainHomeSix> {
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
                      builder: (context) => Hey_Brian(),
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
                      builder: (context) => Hey_brian2(),
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
