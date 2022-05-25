import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class InputWidgets extends StatefulWidget {
  String? title;
  InputWidgets({this.title});

  @override
  _InputWidgetsState createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  //String _inputdagiText = "Boshlang'ich Qiymat";
  String _email = "bootcamp@gmail.com";
  String _password = "12345678";
  String? _e;
  String? _p;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.widget.title!,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: c(),
    );
  }

  Widget c() {
    return Form(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Emailingiz ...",
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            onChanged: (v) {
              setState(() {
                _e = v;
              });
              print("$_e");
            },
            //onSaved: (e){},
          ),
          SizedBox(
            height: 20.9,
          ),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Parolingiz ...",
              labelText: "Parol",
              labelStyle: TextStyle(color: Colors.blue),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            onChanged: (v) {
              setState(() {
                _p = v;
              });
              print("$_p");
            },
            //onSaved: (p){},
          ),
          SizedBox(
            height: 20.9,
          ),
          ElevatedButton(
            onPressed: () {
              if (_email == _e && _password == _p) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.SUCCES,
                  animType: AnimType.TOPSLIDE,
                  title: "Muvaffaqiyatli amalga oshirildi",
                  desc: "Kirishingiz mumkin",
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show();
              } else {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.ERROR,
                  animType: AnimType.TOPSLIDE,
                  title: "Iltimos xatolikni to'g'irlang",
                  desc: "Parol yoki emailda xatolik bor",
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show();
              }
            },
            child: Text(
              "Submit",
            ),
          ),
        ],
      ),
    ));
  }
}
