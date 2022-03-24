import 'package:flutter/material.dart';
import 'package:socialmedia/pages/account.dart';
import 'package:socialmedia/pages/home.dart';
import 'package:socialmedia/pages/reel2.dart';
import 'package:socialmedia/pages/reeltemplate.dart';
import 'package:socialmedia/pages/search.dart';
import 'package:socialmedia/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    MyApp(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: '___'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mood,
              color: Colors.white,
              size: 30,
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
              color: Colors.white,
              size: 40,
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
                size: 30,
              ),
              label: '___'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              label: '___'),
        ],
      ),
    );
  }
}
