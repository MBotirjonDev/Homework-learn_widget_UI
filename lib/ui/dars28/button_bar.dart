
import 'package:flutter/material.dart';
import 'package:homework/ui/dars28/instagram_page.dart';

class HomePageBarInstagram extends StatefulWidget {
  const HomePageBarInstagram({Key? key}) : super(key: key);

  @override
  _HomePageBarInstagramState createState() => _HomePageBarInstagramState();
}

class _HomePageBarInstagramState extends State<HomePageBarInstagram> {
  List<Widget> _listOfPages = [
    InstagramHomePage(),
    // SearchPage(),
    // ContactsPage(),
    // SettingsPage(),
  ];
  List<Widget> _listOfPagesSec = [];
  Widget? homePage, searchPage, contactsPage, settingsPage;
  @override
  void initState(){
    super.initState();
    homePage = InstagramHomePage();
    // searchPage = SearchPage();
    // contactsPage = ContactsPage();
    // settingsPage = SettingsPage();
    _listOfPagesSec = [ homePage!];//settingsPage!, contactsPage!, settingsPage!];
  }
  int _currnetIndexOfBottomBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Bottom Navigation Bar",
          style: TextStyle(color: Colors.red),
        ),
      ),*/
      body: _listOfPagesSec[_currnetIndexOfBottomBar],//_listOfPages[_currnetIndexOfBottomBar],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with_rounded),
          icon: Icon(Icons.home),
          label: "Home",
          tooltip: "Home",
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with_rounded),
          icon: Icon(Icons.search),
          label: "Search",
          tooltip: "Search",
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with_rounded),
          icon: Icon(Icons.contact_page),
          label: "Contacts",
          tooltip: "Contacts",
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with_rounded),
          icon: Icon(Icons.settings),
          label: "Settings",
          tooltip: "Settings",
          backgroundColor: Colors.green,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _currnetIndexOfBottomBar,
      onTap: (menuIndex) {
        setState(() {
          _currnetIndexOfBottomBar = menuIndex;
        });
      },
    );
  }
}
