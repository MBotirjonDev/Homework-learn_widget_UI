


import 'package:flutter/material.dart';
import 'package:homework/ui/elevenhomework/car_detail_page.dart';
import 'car_info.dart';
//import 'package:pull_to_refresh/src/indicator/material_indicator.dart';


class MyAppEleven extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Mario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mario'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          Cars.app_name,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: RefreshIndicator(
        child: Center(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (ctx, i) {
              return insideListView(ctx, i);
            },
            itemCount: Cars.CAR_NAMES.length,
          ),
        ),
        onRefresh: stateniYangila,
      ),
    );
  }
  Future<void> stateniYangila() {
    return Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      setState(() {});
    });
  }

  Widget insideListView(BuildContext ctx, i) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/${Cars.CAR_NAMES[i].toLowerCase()}$i.jpeg",
          ),
        ),
        title: Text(
          Cars.CAR_NAMES[i],
        ),
        subtitle: Text(
          Cars.CAR_YEARS[i],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (ctx) => CarDetail(i),
            ),
          );
        },
      ),
    );
  }
}
