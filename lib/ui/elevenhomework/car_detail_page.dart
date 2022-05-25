
import 'package:flutter/material.dart';
import 'package:homework/ui/elevenhomework/car_info.dart';
import 'package:palette_generator/palette_generator.dart';

class CarDetail extends StatefulWidget {
  int kelganIndex;
  CarDetail(this.kelganIndex);

  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  void initState() {
    super.initState();
    _updatePaletteGenerator();
  }

  PaletteGenerator? paletteGenerator;
  @override
  Widget build(BuildContext context) {
    return paletteGenerator != null ? Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: paletteGenerator!.darkVibrantColor != null
                ? paletteGenerator!.darkVibrantColor!.color
                : Colors.white,
            stretch: true,
            title: Text(
              Cars.CAR_NAMES[widget.kelganIndex],
            ),
            expandedHeight: 260.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/${Cars.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(
                    12.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        Cars.CAR_YEARS[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        Cars.CAR_INFO[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
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
    ) : CircularProgressIndicator();
  }

  Future<void> _updatePaletteGenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage(
        "assets/images/${Cars.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg",
      ),
      size: Size(400.0, 260.0),
    );
    setState(() {
      //print(paletteGenerator!.dominantColor);
    });
  }
}
