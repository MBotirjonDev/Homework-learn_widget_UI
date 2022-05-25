import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:homework/ui/dars37/json.dart';
import 'package:http/http.dart' as http;

class JsonHomePage37 extends StatefulWidget {
  const JsonHomePage37({Key? key}) : super(key: key);

  @override
  _JsonHomePage37State createState() => _JsonHomePage37State();
}

class _JsonHomePage37State extends State<JsonHomePage37> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            SizedBox(width: 20.0),
            Text(
              "Exchange Rate",
            ),
            SizedBox(width: 20.0),
            IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
          ],
        ),
        
      ),
      body: Container(
        color: Colors.yellow.shade600,
        child: FutureBuilder(
          future: _getFromApi(),
          builder: (context, AsyncSnapshot<List<Bank>> snap) {
            var data = snap.data;
            if (snap.hasData) {
              return Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        height: 135.0,
                        width: 390.0,
                        child: Card(
                          margin: EdgeInsets.only(
                              bottom: 27.0, right: 32.0, left: 60.0, top: 27.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.grey[150],
                          child: ListTile(
                            onTap: () {},
                            title: Text(
                              "${data[index].title.toString()}",
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              data[index].cbPrice.toString(),
                              textAlign: TextAlign.center,
                            ),
                            trailing: Icon(Icons.refresh_outlined),
                          ),
                        ),
                      ),
                      Positioned(
                        child: CircleAvatar(
                          radius: 44.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 38.0,
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/random/$index"),
                          ),
                        ),
                        bottom: 0,
                        left: 0,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<Bank>> _getFromApi() async {
    var _res = await http.get(
      Uri.parse("https://nbu.uz/uz/exchange-rates/json"),
    );
    if (_res.statusCode == 200) {
      return (json.decode(_res.body) as List)
          .map((e) => Bank.fromJson(e))
          .toList();
    } else {
      throw Exception("ERROR");
    }
  }
}
