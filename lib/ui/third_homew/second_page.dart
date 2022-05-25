import 'package:flutter/material.dart';

class MilanPageSecond extends StatelessWidget {
  const MilanPageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xfffafbfd),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Milan ",
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "______________________________",
                      ),
                    ],
                  ),
                  Text(
                    " Search",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Mbsoy4zoAjgFD4n2kyoLjgFTfp1J6hkY8Q&usqp=CAU",
                              ),
                              radius: 30.0,
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              "New in",
                            ),
                          ],
                        ),
                        SizedBox(width: 28.0),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPpEF4FtcP-HMehLOFgXJ9i645PgIPxGudwA&usqp=CAU",
                              ),
                              radius: 30.0,
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              "Sale",
                            ),
                          ],
                        ),
                        SizedBox(width: 28.0),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLjUSPan3TFbwKUFGj0zxgeb0aqRf9cyZn9g&usqp=CAU",
                              ),
                              radius: 30.0,
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              "Brand",
                            ),
                          ],
                        ),
                        SizedBox(width: 28.0),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1TLx7WSdMxqq2I-hOXpuMMGK3NPrbEtav4U27VPGy9SRSyoQO55AZaWrNwRHdGvbz46s&usqp=CAU",
                              ),
                              radius: 30.0,
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              "Clothing",
                            ),
                          ],
                        ),
                        SizedBox(width: 28.0),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=20&m=1249496770&s=170667a&w=0&h=_SUv4odBqZIzcXvdK9rqhPBIenbyBspPFiQOSDRi-RI=",
                              ),
                              radius: 30.0,
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              "Shoes",
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              children: [
                Container(
                  //color: Colors.deepPurple,
                  height: 670.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          height: 450.0,

                          //color: Colors.cyan,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtNh-nVrXT1g5MakKH9uzA_Pk8FFXt4IQApQ&usqp=CAU",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Modern",
                            style: TextStyle(
                                fontSize: 29.0, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "________",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " Essentials ",
                                style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "________",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            "Discover new styles",
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 190.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 3.0,
                              backgroundColor: Color(0xff5d594d),
                            ),
                            SizedBox(width: 5.0),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                border: Border.all(
                                  color: Color(0xff9da097),
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff5e574d),
                                  radius: 3.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5.0),
                            CircleAvatar(
                              radius: 3.0,
                              backgroundColor: Color(0xff5d594d),
                            ),
                            SizedBox(width: 5.0),
                            CircleAvatar(
                              radius: 3.0,
                              backgroundColor: Color(0xff5d594d),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 200.0,
                                //width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://img.freepik.com/free-photo/women-modern-fashion-clothes-accessories-flat-lay-female-casual-style-look-with-pastel-pink-jeans-blouse-high-heels-perfume-gold-watch_408798-4185.jpg?size=626&ext=jpg",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Container(
                                height: 200.0,
                                //width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://st4.depositphotos.com/1496381/22434/v/1600/depositphotos_224340014-stock-illustration-beautiful-complete-women-dressed-modern.jpg",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 45.0,
              decoration: BoxDecoration(color: Colors.cyan),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home_outlined,size: 35.0),
                  Icon(Icons.search_outlined,size: 35.0),
                  Icon(Icons.menu_book_outlined,size: 35.0),
                  Icon(Icons.favorite_outline,size: 35.0),
                  Icon(Icons.person_outline,size: 35.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
