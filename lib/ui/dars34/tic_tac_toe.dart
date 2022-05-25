import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class TicTacToeGamePage extends StatefulWidget {
  const TicTacToeGamePage({Key? key}) : super(key: key);

  @override
  _TicTacToeGamePageState createState() => _TicTacToeGamePageState();
}

class _TicTacToeGamePageState extends State<TicTacToeGamePage> {
  bool xMi = true;
  List<String> belgi = List.generate(9, (index) => "");
  int _forX = 0;
  int _forO = 0;
  DateTime? _time;
  DateTime? _nowTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          "Tic Tac Toe",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "X: $_forX",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(width: 100.0),
                  Text(
                    "O: $_forO",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              Container(
                height: 500.0,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          
                          boxShadow: [
                            BoxShadow(),
                          ],
                        ),
                        child: Text(
                          "${belgi[index]}",
                          style: TextStyle(fontSize: 100.0),
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            if (xMi) {
                              _forX += 1;
                              belgi[index] = "X";
                              xMi = !xMi;
                              _time = DateTime.now();
                            } else {
                              _forO += 1;
                              belgi[index] = "O";
                              xMi = !xMi;
                            }
                            for (var i = 0; i < 9; i += 3) {
                              if (belgi[i] == belgi[i + 1] &&
                                  belgi[i + 1] == belgi[i + 2] &&
                                  belgi[i + 2] != "") {
                                _nowTime = DateTime.now();
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.SUCCES,
                                  animType: AnimType.TOPSLIDE,
                                  title: " Congratulations ",
                                  desc: " You are winner: ${belgi[i]} ",
                                  btnCancelOnPress: () {},
                                  btnOkOnPress: () {},
                                )..show();
                              }
                            }
                            for (var i = 0; i < 3; i++) {
                              if (belgi[i] == belgi[i + 3] &&
                                  belgi[i + 3] == belgi[i + 6] &&
                                  belgi[i + 6] != "") {
                                _nowTime = DateTime.now();
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.SUCCES,
                                  animType: AnimType.TOPSLIDE,
                                  title: " Congratulations ",
                                  desc: " You are winner: ${belgi[i]}",
                                  btnCancelOnPress: () {},
                                  btnOkOnPress: () {},
                                )..show();
                              }
                            }
                            if (belgi[0] == belgi[4] &&
                                belgi[4] == belgi[8] &&
                                belgi[8] != "") {
                              _nowTime = DateTime.now();
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.TOPSLIDE,
                                title: " Congratulations ",
                                desc: " You are winner: ${belgi[0]}",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            } else if (belgi[2] == belgi[4] &&
                                belgi[4] == belgi[6] &&
                                belgi[6] != "") {
                              _nowTime = DateTime.now();
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.TOPSLIDE,
                                title: " Congratulations ",
                                desc: " You are winner: ${belgi[2]}",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            }
                            if (_forO == 5 && _forX == 4) {
                              _nowTime = DateTime.now();
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.INFO,
                                animType: AnimType.TOPSLIDE,
                                title: " X   and   O ",
                                desc: "  Force are equal: X O",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            } else if (_forX == 5 && _forO == 4) {
                              _nowTime = DateTime.now();
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.INFO,
                                animType: AnimType.TOPSLIDE,
                                title: " X   and   O ",
                                desc: "  Force are equal: X O",
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            }
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.brown),
                  child: Text(
                    "Restart Game ",
                  ),
                  onPressed: () {
                    setState(() {
                      List<String> belgi = List.generate(9, (index) => "");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TicTacToeGamePage(),
                        ),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _tekshiruvEqual() {
    if (_forO == 5 && _forX == 4) {
      _nowTime = DateTime.now();
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.TOPSLIDE,
        title: " X   and   O ",
        desc:
            "  Force are equal: X O\nTime in seconds: ${_nowTime!.second - _time!.second}",
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      )..show();
    } else if (_forX == 5 && _forO == 4) {
      _nowTime = DateTime.now();
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.TOPSLIDE,
        title: " X   and   O ",
        desc:
            "  Force are equal: X O\nTime in seconds: ${_nowTime!.second - _time!.second}",
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      )..show();
    }
  }
}
