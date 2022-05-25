// To parse this JSON data, do
//
//     final nbu = nbuFromJson(jsonString);

import 'dart:convert';

List<Nbu> nbuFromJson(String str) => List<Nbu>.from(json.decode(str).map((x) => Nbu.fromJson(x)));

String nbuToJson(List<Nbu> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Nbu {
    Nbu({
        this.title,
        this.code,
        this.cbPrice,
        this.nbuBuyPrice,
        this.nbuCellPrice,
        this.date,
    });

    String? title;
    String? code;
    String? cbPrice;
    String? nbuBuyPrice;
    String? nbuCellPrice;
    String? date;

    factory Nbu.fromJson(Map<String, dynamic> json) => Nbu(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "code": code,
        "cb_price": cbPrice,
        "nbu_buy_price": nbuBuyPrice,
        "nbu_cell_price": nbuCellPrice,
        "date": date,
    };
}
