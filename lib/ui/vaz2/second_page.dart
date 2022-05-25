import 'package:flutter/material.dart';

class SecondLes extends StatelessWidget {
  const SecondLes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                Text(
                                  "Welcome Breakfast",
                                  style: TextStyle(
                                    fontSize: 29.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 60.0,
                                ),
                                IconButton(
                                  color: Colors.red,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40.0,
                                  ),
                                ),
                              ],
                            ),
                            height: 400.0,
                            width: 400.0,
                            decoration: BoxDecoration(
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
                            height: 400.0,
                            width: 400.0,
                            decoration: BoxDecoration(
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "More Fast Foods",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.seriouseats.com/thmb/IKY5aED3gOwTTZ0KQpsMxMCcIFI=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2017__12__20171115-chicken-soup-vicky-wasik-11-80db1a04d84a43a089e0559efdddd517.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "About Soup",
                                style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,),
                              ),
                              Text("_____________\n___________\n____________"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHIiG1T9k8vyVsJed6ACsgrJfupb_7PDJ1-Kkpd--Wv-gCNvHXE3mbEuHShFux4GCCtiM&usqp=CAU",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "About \nFast Food",
                                style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,),
                              ),
                              Text("_____________\n___________\n____________"),
                            ],
                          ),
                        ),
                      ),
                    ],
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
