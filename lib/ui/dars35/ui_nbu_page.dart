import 'package:flutter/material.dart';
import 'package:homework/ui/dars35/nbu_json_api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NBUApiUi extends StatefulWidget {
  const NBUApiUi({Key? key}) : super(key: key);

  @override
  _NBUApiUiState createState() => _NBUApiUiState();
}

class _NBUApiUiState extends State<NBUApiUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NBU exchange rate",
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: _functionNBU(),
          builder: (context, AsyncSnapshot<List<Nbu>> snap) {
            var data = snap.data;
            return snap.hasData
                ? ListView.builder(
                    itemCount: snap.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snap.data![index].title.toString()),
                        subtitle: Text(snap.data![index].cbPrice.toString()),
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.brown,
                          child: Text(snap.data![index].code.toString()),
                        ),
                        trailing: Text(snap.data![index].date.toString()),
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }

  Future<List<Nbu>> _functionNBU() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json/");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      return (json.decode(res.body) as List)
          .map((e) => Nbu.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato Bor ${res.statusCode}");
    }
  }
}
