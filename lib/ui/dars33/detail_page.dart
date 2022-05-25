import 'package:flutter/material.dart';
import 'package:homework/ui/dars33/check_page.dart';
import 'package:homework/ui/dars33/detailos_page.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int scaled = 0;
    return Scaffold(
      backgroundColor: Color(0xFF1a5cdb),
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 20,
                    color: Colors.white,
                  )),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Icon(
                  Icons.favorite_outline,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atlantida",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Yacht",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 32),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            " / day",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      DetailContainers(),
                      DetailContainers(),
                      DetailContainers(),
                    ],
                  ),
                  SizedBox(width: 44),
                  Expanded(
                    child: Container(
                      height: height / 1.2,
                      child: Image(
                        image: AssetImage("assets/images/yacht.png",),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF3b3d41),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 62,
          margin: EdgeInsets.fromLTRB(32, 0, 16, 0),
          padding: EdgeInsets.fromLTRB(32, 0, 5, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rent Now",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => CheckoutPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
