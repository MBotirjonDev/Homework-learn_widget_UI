
import 'package:flutter/material.dart';
import 'package:homework/ui/input/login_page.dart';

class Uyvazifa extends StatelessWidget {
  const Uyvazifa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Car Market",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                    "https://cdn.dribbble.com/users/1577045/screenshots/4914645/dribble_pic.png?compress=1&resize=400x300",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 30,
                      top: 15,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        hintText: "What transport do you need?",
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Cars",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Trucks",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Scooters",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Helicopers",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        /////////
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          height: 400.0,
                          width: 330.0,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "BMW X4 ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        "⭐️ 4.5",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                alignment: Alignment.bottomLeft,
                                child: const Text(
                                  "2017 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                height: 230.0,
                                decoration: const BoxDecoration(
                                  color: Colors.orangeAccent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://media.autoexpress.co.uk/image/private/s--X-WVjvBW--/f_auto,t_content-image-full-desktop@1/v1570031170/autoexpress/2019/10/01_3.jpg",
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: const Text(
                                      "\$210",
                                      style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 33,
                                    child: const Text(
                                      " per day",
                                      style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 45.0,
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Buy Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        /////////
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          height: 400.0,
                          width: 330.0,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      "Bugatti",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        "⭐️ 4.6",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                alignment: Alignment.bottomLeft,
                                child: const Text(
                                  "2019 - SPORT CAR",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                height: 230.0,
                                // width: 330.0,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.motor1.com/images/mgl/gZlkg/s1/bugatti-divo-front-view.jpg",
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: const Text(
                                      "\$1 000",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 33,
                                    child: const Text(
                                      " per day",
                                      style: TextStyle(
                                        color: Colors.amberAccent,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35.0,
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.amberAccent[100],
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Book Now",
                                      style: TextStyle(
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        ////////
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          height: 400.0,
                          width: 330.0,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      "Mercedes Benz",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        "⭐️ 4.1",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                alignment: Alignment.bottomLeft,
                                child: const Text(
                                  "AMG GTS ",
                                  style: TextStyle(
                                    color: Colors.tealAccent,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                height: 230.0,
                                // width: 330.0,
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://imgd.aeplcdn.com/642x336/n/cw/ec/47336/e-class-exterior-right-front-three-quarter.jpeg?q=85",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: const Text(
                                      "\$550",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 33,
                                    child: const Text(
                                      " per day",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35.0,
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.amberAccent[100],
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Book Now",
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  // Pastdagi kichik containerchalar rasmlar uchun
                  Container(
                    height: 170.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          // height: 170.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://img.pixers.pics/pho_wat(s3:700/FO/37/85/48/45/700_FO37854845_9a508dd1b0b2a180f65a4859c1bb0371.jpg,700,459,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,409,jpg)/stickers-motorbike.jpg.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Container(
                          // height: 160.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 100.0,
                    // color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
