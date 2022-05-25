import 'package:flutter/material.dart';

class BoatVerticalList extends StatelessWidget {
  const BoatVerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      height: 80,
      width: width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFffac1b),
              borderRadius: BorderRadius.circular(32),
            ),
            height: 80,
            width: 80,
            child: Image.network(
              "https://www.nicepng.com/png/full/8-84404_yacht-png-lake-boat-picture-black-and-white.png",
              width: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ocean Yacht",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Text(
                      "4,6",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
