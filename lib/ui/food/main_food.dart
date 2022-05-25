import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/food/home_page_food.dart';
import 'package:homework/ui/input/main_page_input.dart';

class FoodMain extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  _FoodMainState createState() => _FoodMainState();
}

class _FoodMainState extends State<FoodMain> {
  String _email = "bootcamp@gmail.com";
  String _password = "12345678";
  String? _e;
  String? _p;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://previews.123rf.com/images/luplupme/luplupme2008/luplupme200800079/153938169-online-farm-organic-food-delivery-concept-vector-illustration-people-character-buy-fresh-vegetable-i.jpg",
                    ),
                  ),
                ),
                height: 400.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "\tOrder your\n\tFavorite\n\tFood",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36.0,
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  
                  child: Text(
                    "Made by the finest Home Chefs, every\ndish raises the bar of Taste, Health,\nHygiene, and cleanliness.",
                    style: TextStyle(color: Colors.grey, fontSize: 17.0),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "\t\t\t\t\tSkip ",
                    ),
                  ),
                  SizedBox(
                    width: 270.0,
                  ),
                  Container(
                    child: FloatingActionButton(
                      backgroundColor: Colors.red[500],
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageFood()));},
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
