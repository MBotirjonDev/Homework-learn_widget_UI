import 'package:flutter/material.dart';

import 'package:homework/ui/dars39/home_page.dart';
import 'package:homework/ui/main_home/main_home.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageImtihon(),//CarHomeWithJson(),//AlbumPage(),//MyMusicList38(),//JsonHomePage37(),//NBUApiUi(),
      
      //MainHome(),
      
    );
  }
}
