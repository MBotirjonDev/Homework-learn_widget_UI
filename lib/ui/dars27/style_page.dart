import 'package:flutter/material.dart';
import 'package:homework/ui/dars27/home_page.dart';

class StylePage extends StatelessWidget {
  const StylePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageBarber(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let the journey',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      "begin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "|   What happenens in the",
                    ),
                    Text(
                      "|   Barber Shop",
                      style: TextStyle(
                        fontFamily: "Bonheur Royale",
                        fontWeight: FontWeight.bold,
                        //color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      "|   Stays in the",
                    ),
                    Text(
                      "|   Barber Shop",
                      style: TextStyle(
                        fontFamily: "Bonheur Royale",
                        fontWeight: FontWeight.bold,
                        //color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Unless you posted it all to social networks*',
                style: TextStyle(fontSize: 10.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Your Choice",
                style: TextStyle(
                  //fontFamily: "Bonheur Royale",

                  //color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("All"),
                Text("Haircut"),
                Text("Beard"),
                Text("Trimming"),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Classic"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Barbers's dream"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Handsom"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Shiny"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Old way"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Romantic"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Gibson"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Harsh"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/c0/1b/ca/c01bcad4bfa4dd8bfe2179121a251b31.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Focused"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
