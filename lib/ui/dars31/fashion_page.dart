
import 'package:flutter/material.dart';
import 'package:homework/ui/dars31/info_page.dart';

class MyFashionPage extends StatefulWidget {
  @override
  _MyFashionPageState createState() => _MyFashionPageState();
}

class _MyFashionPageState extends State<MyFashionPage> {
  @override
  Widget build(BuildContext context) {
    int _currectIndexForButtomNavBar = 0;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _appBarMethod(),
      body: ListView(
        children: <Widget>[
          _followContainerMethod(),
          Hero(
            tag: "1",
            child: _postCardMethod(context),
          ),
          _postCardMethod(context),
        ],
      ),
      bottomNavigationBar:
          _bottomNavigationBarMethod(_currectIndexForButtomNavBar),
    );
  }

  AppBar _appBarMethod() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "Discovery",
        style: TextStyle(
          fontSize: 26.0,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 28.0,
            ),
            color: Colors.grey,
          ),
        ),
      ],
      centerTitle: false,
    );
  }

  Container _followContainerMethod() {
    return Container(
      height: 150.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 5.0,
                ),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        "https://source.unsplash.com/random/$index",
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          "https://source.unsplash.com/random/${index + 8}",
                        ),
                      ),
                      bottom: 0,
                      right: 0,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Padding _postCardMethod(BuildContext context) {
    var _image =
        "https://i.pinimg.com/564x/84/48/af/8448af80944eaca909874361f6009221.jpg";
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: 550.0,
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    "https://source.unsplash.com/random/2323",
                  ),
                ),
                title: Text("Daisy"),
                subtitle: Text("34mins ago"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_outlined,
                  ),
                ),
              ),
              Text(
                "Qui enim mollit adipisicing laboris veniam consequat deserunt est.Enim dolore laboris nisi sunt irure cupidatat eiusmod.",
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 250.0,
                      width: (MediaQuery.of(context).size.width) / 1.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            _image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoPage(
                            img: _image,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Container(
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width - 200) / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "http://source.unsplash.com/random/2",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width - 200) / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "http://source.unsplash.com/random/3",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Chip(
                    label: Text(
                      "#Louis Vutton",
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: Colors.brown[100],
                  ),
                  SizedBox(width: 5.0),
                  Chip(
                    label: Text(
                      "#Chloe",
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: Colors.brown[100],
                  ),
                ],
              ),
              Divider(height: 50.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.replay_10_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "1.7k",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment_bank_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(
                          "3.3k",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Bottom Navigation Bar
  BottomNavigationBar _bottomNavigationBarMethod(_currectIndexForButtomNavBar) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.home_outlined,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.play_arrow_outlined,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.play_arrow_outlined,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.compass_calibration_outlined,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.compass_calibration_outlined,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _currectIndexForButtomNavBar,
      onTap: (i) {
        setState(() {
          _currectIndexForButtomNavBar = i;
        });
      },
    );
  }
}
