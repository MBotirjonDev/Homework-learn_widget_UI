import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class GameInstagram extends StatefulWidget {
  const GameInstagram({Key? key}) : super(key: key);

  @override
  _GameInstagramState createState() => _GameInstagramState();
}

class _GameInstagramState extends State<GameInstagram> {
  double _sizeOfContainerFirst = 400.0;
  double _sizeOfContainerSecond = 400.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Game",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 26.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _sizeOfContainerFirst = 400.0;
                _sizeOfContainerSecond = 400.0;
              });
            },
            icon: Icon(
              Icons.refresh_outlined,
              size: 29.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              height: _sizeOfContainerFirst,
              color: Colors.cyanAccent,
            ),
            onTap: () {
              setState(() {
                _sizeOfContainerFirst += 20;
                _sizeOfContainerSecond -= 20;
                if (_sizeOfContainerFirst == 800.0) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.SUCCES,
                    animType: AnimType.LEFTSLIDE,
                    title: "Congratulations",
                    desc: "Cyan player winner",
                  )..show();
                  _sizeOfContainerFirst = 400.0;
                  _sizeOfContainerSecond = 400.0;
                }
              });
            },
          ),
          GestureDetector(
            child: Container(
              height: _sizeOfContainerSecond,
              color: Colors.yellow,
            ),
            onTap: () {
              setState(() {
                _sizeOfContainerFirst -= 20;
                _sizeOfContainerSecond += 20;
                if (_sizeOfContainerSecond == 800.0) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.SUCCES,
                    animType: AnimType.LEFTSLIDE,
                    title: "Congratulations",
                    desc: "Yellow player winner",
                  )..show();
                  _sizeOfContainerFirst = 400.0;
                  _sizeOfContainerSecond = 400.0;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
