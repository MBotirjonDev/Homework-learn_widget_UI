import 'package:flutter/material.dart';
import 'package:homework/ui/dars33/detail_page.dart';


class BoatHorizontalList extends StatefulWidget {
  const BoatHorizontalList({Key? key}) : super(key: key);

  @override
  _BoatHorizontalListState createState() => _BoatHorizontalListState();
}

class _BoatHorizontalListState extends State<BoatHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4.0,
              spreadRadius: 3.0,
            ),
          ],
          color: Color(0xFF1a5cdb),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 8),
                  Text(
                    "#yaching",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.network(
                "https://www.nicepng.com/png/full/8-84404_yacht-png-lake-boat-picture-black-and-white.png",
                width: 500,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Atlantida",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Yacht",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
