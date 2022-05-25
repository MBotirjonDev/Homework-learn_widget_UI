import 'package:flutter/material.dart';
import 'package:homework/ui/dars25/infor_page.dart';

class CarHomePage extends StatefulWidget {
  const CarHomePage({Key? key}) : super(key: key);

  @override
  _CarHomePageState createState() => _CarHomePageState();
}

class _CarHomePageState extends State<CarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                      "https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg",
                    ),
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Username\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                    TextSpan(
                      text: "example@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 2.0),
            //SizedBox(height: 5.0),
            Container(
              height: 700.0,
              child: ListView(
                children: _listOfListTile(context),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InformationPage(),
                ),
              );
            },
            icon: Icon(
              Icons.search,
              size: 28.0,
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                height: 100.0,
                width: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/3e3954d7c8dd8c67d2be472346b350e2/large.jpg",
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10.0),
                  Text(
                    "Cybertruck",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Text(
                    "Tesla S",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 39.0),
                  Text(
                    "Rocket Tesla Roadstar",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20.0),
                  Container(
                    height: 350.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                          "http://data.3dtuning.com/tun/aLkiIzPcCL.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: 350.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                          "https://s.aolcdn.com/commerce/autodata/images/USC70TSC024B021001.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: 350.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                          "https://cdn.vox-cdn.com/thumbor/EYkhv_nmEAaS3JPmI0r9Egn0Mzc=/0x0:3840x2160/1200x800/filters:focal(1613x773:2227x1387)/cdn.vox-cdn.com/uploads/chorus_image/image/60079013/Roadster_Hero.0.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                ],
              ),
            ),
            _change(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discovery",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  SizedBox(width: 140.0),
                  Container(
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),),
                    height: 5.0,
                    width: 30.0,
                    color: Colors.black,
                  ),
                  Container(
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),),
                    height: 5.0,
                    width: 70.0,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "/6",
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 170.0,
                      width: 170.0,
                      //color: Colors.red,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://miro.medium.com/max/5056/1*G0EWYJ_JYKbgaqMvQmqDoQ.png",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      height: 170.0,
                      width: 170.0,
                      //color: Colors.red,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://i.ytimg.com/vi/l5x0yMuBKhk/maxresdefault.jpg",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      height: 170.0,
                      width: 170.0,
                      //color: Colors.red,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://electrek.co/wp-content/uploads/sites/3/2020/10/Tesla-Bird-eye-view.jpg?quality=82&strip=all",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 1.0),
                  Text(
                    "Interface",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 100.0),
                  Text(
                    "Speed",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 170.0),
                  Text(
                    "View",
                    style: TextStyle(
                      color: Colors.grey,
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

  List<Widget> _listOfListTile(context) {
    return [
      ListTile(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 23.0),
        ),
        leading: Icon(
          Icons.person,
        ),
        onTap: () {},
      ),
      ListTile(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 23.0),
        ),
        leading: Icon(Icons.settings),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contesxt) {
                return Scaffold(
                  //drawer: DrawerMenu(),
                  appBar: AppBar(
                    title: Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 33.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      ListTile(
        title: Text(
          "Information",
          style: TextStyle(fontSize: 23.0),
        ),
        leading: Icon(
          Icons.info,
        ),
        onTap: () {},
      ),
      ListTile(
        title: Text(
          "Contact",
          style: TextStyle(fontSize: 23.0),
        ),
        leading: Icon(
          Icons.contact_page,
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 100.0,
      ),
      Divider(thickness: 10.0),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            InkWell(
              focusColor: Colors.red,
              splashColor: Colors.blue,
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                ),
              ),
              onDoubleTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 10.0),
            Icon(Icons.logout,color: Colors.red,),
          ],
        ),
      ),
    ];
  }

  Widget _change() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            color: Colors.grey,
            size: 8.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            size: 10.0,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            color: Colors.grey,
            size: 8.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            color: Colors.grey,
            size: 8.0,
          ),
        ),
      ],
    );
  }
}
