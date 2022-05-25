import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.menu,
                    size: 28.0,
                  ),
                ),
                SizedBox(
                  width: 270.0,
                ),
                Icon(
                  Icons.search,
                  size: 28.0,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Breakfast Time",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      height: 350.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROAcoVCt2JJWEPZgTVaJMEIVpAzq4v1AwhDecbP0doMYlqnNsPnC8dCDiVcs3U2hR-DDM&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      height: 350.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://previews.123rf.com/images/mcherevan/mcherevan1904/mcherevan190400076/124064809-hand-drawn-lettering-quote-breakfast-time-on-fried-egg-background-vector-phrase-for-card-print-poste.jpg",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJkmRzMzfmj4B9Us-sfRJI6TSz9SfsW9PRYg&usqp=CAU",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "More Foods",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Fast Food",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJrEWyr7VpbqvVHulz2oiLmaYQeB-pBjsLXg6NGNQa7akTjnRRt8mIgLldPlL0MUSIjE&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 300.0,
                      width: 200.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Full Fast Food",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD4AWsqiWyVaO9V7FvGZmfqzGlqOKOSUzLCA&usqp=CAU",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 300.0,
                      width: 200.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Big BURGER",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://w7.pngwing.com/pngs/97/666/png-transparent-hamburger-cheeseburger-fast-food-mcdonald-s-gourmet-burgers-miscellaneous-food-beef.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 300.0,
                      width: 200.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
