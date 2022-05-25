import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/input/main_page_input.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://st4.depositphotos.com/4177785/28157/v/1600/depositphotos_281571408-stock-illustration-used-cars-market-concept-icon.jpg"),),),
              height: 300.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hey,\nLogin Now.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36.0,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 15.0, 15.0, 15.0),
                  child: Container(
                    child: Text(
                      "If you are now /",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Create  New",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email ...",
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.flash_on),
                        onPressed: () {},
                      ),
                    ),
                    onChanged: (v) {
                      setState(() {
                        _e = v;
                      });
                      print("$_e");
                    },
                  ),
                  SizedBox(
                    height: 20.9,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password ...",
                      labelText: "Password",
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
                  ),
                  SizedBox(
                    height: 20.9,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Forgot Passcode? / ",
                        ),
                      ),
                      Container(
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        if (_email == _e && _password == _p) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.SUCCES,
                            animType: AnimType.TOPSLIDE,
                            title: "Muvaffaqiyatli amalga oshirildi",
                            desc: "Kirishingiz mumkin",
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainPage(),
                                ),
                              );
                            },
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
                      child: Container(
                        alignment: Alignment.center,
                        width: 270.0,
                        height: 40.0,
                        child: Text(
                          "Login",
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "Skip Now",
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
