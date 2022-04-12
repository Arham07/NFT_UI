import 'package:flutter/material.dart';
import 'package:nft_ui/screens/profile_screen/profile_screen.dart';
import 'package:nft_ui/screens/test_screens/test1.dart';
import 'package:nft_ui/screens/test_screens/test2.dart';
import 'package:nft_ui/screens/test_screens/test3.dart';

import 'models/colors.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    ProfileScreen(),
    Test1(),
    Test2(),
    Test3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: randomPink1,
          selectedIconTheme: const IconThemeData(color: randomPink7),
          selectedItemColor:  Colors.pinkAccent.shade700,
          unselectedItemColor:Colors.white,
          showUnselectedLabels: false,
          currentIndex: pageIndex,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Heart'),
          ],
        ),

    );
  }
}
