import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/dars33/horizontal_page.dart';
import 'package:homework/ui/dars33/vertical_page.dart';

class YachtPage extends StatefulWidget {
  const YachtPage({Key? key}) : super(key: key);

  @override
  _YachtPageState createState() => _YachtPageState();
}

class _YachtPageState extends State<YachtPage> {
  @override
  Widget build(BuildContext context) {
    double xeight = MediaQuery.of(context).size.height;
    double vidth = MediaQuery.of(context).size.width;
    int selected = 0;
    return Scaffold(
      extendBody: true,
      body: PreferredSize(
        preferredSize: Size(xeight, vidth),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  color: Color(0xFFf5f3fb),
                  width: vidth * .3,
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                      onPressed: (){Navigator.pop(context);},
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Icon(
                        Icons.menu,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yacht",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Charters",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: xeight * .5,
                    width: vidth,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 52, 32, 52),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Motor-Sailing",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected != 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected != 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                            height: 8,
                                            width: 8,
                                          )
                                        : Container(),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Sailing",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected != 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected != 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                            height: 8,
                                            width: 8,
                                          )
                                        : Container(),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Motor",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected == 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected == 0
                                        ? Container(
                                            height: 8,
                                            width: 8,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Swiper(
                          layout: SwiperLayout.CUSTOM,
                          customLayoutOption:
                              CustomLayoutOption(startIndex: -1, stateCount: 3)
                                  .addTranslate([
                            Offset(-670.0, 0.0),
                            Offset(16.0, 0.0),
                            Offset(260.0, 0.0),
                            Offset(460.0, 0.0)
                          ]).addScale([
                            1.3,
                            0.9,
                            0.8,
                            0.7,
                          ], Alignment.centerRight).addOpacity([
                            0.0,
                            1,
                            0.6,
                            0.3,
                          ]),
                          itemWidth: vidth * .64,
                          itemHeight: xeight * .54 - 64,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return BoatHorizontalList();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Poppular",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(32),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, index) {
                        return BoatVerticalList();
                      },
                      childCount: 3,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
