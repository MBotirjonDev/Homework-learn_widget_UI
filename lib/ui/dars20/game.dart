import 'dart:developer';
import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int rand = Random().nextInt(10);
  DateTime? boshlaganVaqt = DateTime.now();
  DateTime? topilganVaqt;
  int urunish = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonni top"),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ElevatedButton(
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 60,
                          color: Colors.blue,
                          child: Text(
                            "${index + 1}",
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        onPressed: () {
                          //boshlaganVaqt = DateTime.now();

                          urunish += 1;
                          if (urunish <= 3) {
                            if (index == rand) {
                              topilganVaqt = DateTime.now();
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.TOPSLIDE,
                                title: "Tabriklayman Topdingiz",
                                desc:
                                    "Boshlangan vaqt $boshlaganVaqt\n Topilgan vaqt $topilganVaqt\n Ketgan vaqt ${topilganVaqt!.second - boshlaganVaqt!.second} soniya\nUrunishlar soni $urunish",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            } else {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.ERROR,
                                animType: AnimType.TOPSLIDE,
                                title: "Afsus",
                                desc:
                                    "Yana urunib ko'ring\nUrunishlar soni $urunish",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            }
                          } else {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.INFO,
                              animType: AnimType.TOPSLIDE,
                              title: "Game Over",
                              desc:
                                  "Urunishlar soni $urunish ga teng\n Ok ni bosing va yangitadan boshlang ",
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Game(),
                                  ),
                                );
                              },
                            )..show();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
