import 'package:flutter/material.dart';
import 'package:homework/ui/dars27/home_page.dart';

class Dars27 extends StatefulWidget {
  const Dars27({Key? key}) : super(key: key);

  @override
  _Dars27State createState() => _Dars27State();
}

class _Dars27State extends State<Dars27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[850],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "AWESOME",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Center(
              child: Text(
                "___________________________",
                style: TextStyle(color: Colors.brown, fontSize: 23.0),
              ),
            ),
            Center(
              child: Text(
                "~ Barber Shop ~",
                style: TextStyle(
                    fontFamily: "Bonheur Royale",
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Text(
                    "_________",
                    style: TextStyle(color: Colors.brown, fontSize: 23.0),
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                      "https://s3.envato.com/files/276274407/Barber%20Shop%20Hair%20Salon%20Hair%20Stylist%20Vintage%20King%20Logo%20Luxury%20Pomade%20Retro%20Royal%20Vector%2002%20pre.jpg",
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "_________",
                    style: TextStyle(color: Colors.brown, fontSize: 23.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://ae01.alicdn.com/kf/H41afd7f06b234d9a8ec6a10273ed94fet/Barber-Shop-Logo-Hair-Salon-Decor-Vintage-Vinyl-Record-Wall-Clock-Hair-Accessories-Hairdresser-Wall-Sign.jpg_Q90.jpg_.webp",
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  child: Text(
                    "Get a Serius haircut",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageBarber(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(child: Text("No take me back to mummy"))
          ],
        ),
      ),
    );
  }
}
