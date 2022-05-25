import 'package:flutter/material.dart';
import 'package:homework/ui/car/main_page.dart';
import 'package:homework/ui/dars20/game.dart';
import 'package:homework/ui/dars21/water_page.dart';
import 'package:homework/ui/dars22/dropdown_project.dart';
import 'package:homework/ui/dars25/home_page.dart';
import 'package:homework/ui/dars27/hello_page.dart';
import 'package:homework/ui/dars28/button_bar.dart';
import 'package:homework/ui/dars31/fashion_page.dart';
import 'package:homework/ui/dars32/collection.dart';
import 'package:homework/ui/dars33/yatch_page_33.dart';
import 'package:homework/ui/dars34/tic_tac_toe.dart';
import 'package:homework/ui/dars37/home_page.dart';
import 'package:homework/ui/dars38/my_music_list.dart';
import 'package:homework/ui/eight_homew/eight_homew.dart';
import 'package:homework/ui/elevenhomework/car_detail_page.dart';
import 'package:homework/ui/elevenhomework/maini.dart';
import 'package:homework/ui/flutter_dart2/flutter.dart';
import 'package:homework/ui/food/main_food.dart';
import 'package:homework/ui/cofee/homework.dart';
import 'package:homework/ui/fourth_homew/fourth_homew.dart';
import 'package:homework/ui/input/input_home.dart';
import 'package:homework/ui/main_home/firs_homew.dart';
import 'package:homework/ui/main_home/nine_homew.dart';
import 'package:homework/ui/main_home/six_homew.dart';
import 'package:homework/ui/main_home/third_homew.dart';
import 'package:homework/ui/main_home/thirtyfive_homew.dart';
import 'package:homework/ui/third_homew/first_page.dart';
import 'package:homework/ui/widget_input/inputs.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
      body: _homewmain(),
    );
  }

  Widget _homework() {
    return ListView.builder(
      itemCount: 19,
      itemBuilder: (context, index) {
        return Card(
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
              "${index + 1} - Homework",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("#homewBotirjon\nThemelar bo'yicha"),
            trailing: IconButton(
              onPressed: () {
                for (var i = 0; i < 19; i++) {}
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
    );
  }

  Widget _homewmain() {
    return SingleChildScrollView(
      child: Container(
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
                  "1 - Homework",
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
                        builder: (context) => MainHomeFirst(),
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
                  "2 - Homework",
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
                        builder: (context) => FlutterDart(),
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
                  "3 - Homework",
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
                        builder: (context) => MainHomeThird(),
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
                  "4 - Homework",
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
                        builder: (context) => PlusMinus(),
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
                  "5 - Homework",
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
                        builder: (context) => MilanPage(),
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
                  "6 - Homework",
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
                        builder: (context) => MainHomeSix(),
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
                  "7 - Homework",
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
                        builder: (context) => MainHomeFirst(),
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
                  "8 - Homework",
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
                        builder: (context) => Vazifa8(),
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
                  "9 - Homework",
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
                        builder: (context) => NineHome(),
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
                  "10 - Homework",
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
                        builder: (context) => Uyishi(),
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
                  "11 - Homework",
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
                        builder: (context) => MyAppEleven(),
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
                  "12 - Homework",
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
                        builder: (context) => InputWidgets(
                          title: "Input",
                        ),
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
                  "13 - Homework",
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
                        builder: (context) => Homepage(),
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
                  "14 - Homework",
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
                        builder: (context) => Uyvazifa(),
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
                  "15 - Homework",
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
                        builder: (context) => FoodMain(),
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
                  "16 - Homework",
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
                        builder: (context) => Game(),
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
                  "17 - Homework",
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
                        builder: (context) => WaterPage(user: "B"),
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
                  "18 - Homework",
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
                        builder: (context) => DropDown(),
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
                  "19 - Homework",
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
                        builder: (context) => CarHomePage(),
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
                  "20 - Homework",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                    "#homewBotirjon\nThemelar bo'yicha Telegramni qil !!!!"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarHomePage(),
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
                  "21 - Homework",
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
                        builder: (context) => Dars27(),
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
                  "22 - Homework",
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
                        builder: (context) => HomePageBarInstagram(),
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
                  "23 - Homework",
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
                        builder: (context) => HomePageBarInstagram(),
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
                  "24 - Homework",
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
                        builder: (context) => MyFashionPage(),
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
                  "25 - Homework",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                    "#homewBotirjon\nThemelar bo'yicha\n11 proda 32 darsda"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyFashionPage(),
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
                  "26 - Homework",
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
                        builder: (context) => CollectionFurniture(),
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
                  "27 - Homework",
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
                        builder: (context) => YachtPage(),
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
                  "28 - Homework",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("#homewBotirjon\nThemelar bo'yicha\ncoffe figma"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YachtPage(),
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
                  "29 - Homework",
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
                        builder: (context) => TicTacToeGamePage(),
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
                  "30 - Homework",
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
                        builder: (context) => ThirtyFive(),
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
                  "31 - Homework",
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
                        builder: (context) => ThirtyFive(),
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
                  "32 - Homework",
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
                        builder: (context) => JsonHomePage37(),
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
                  "33 - Homework",
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
                        builder: (context) => MyMusicList38(),
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
