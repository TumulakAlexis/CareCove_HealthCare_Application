import 'package:care_cove/screens/homescreen%20screens/homescreen.dart';
import 'package:care_cove/screens/homescreen%20screens/profilepage.dart';
import 'package:care_cove/screens/homescreen%20screens/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int index = 0;

  final screens = [
    const HomeScreen(),
    const SearchPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.transparent,
        color: Colors.brown,
        index: index,
        items: const [
          Hero(
            tag: 'home-icon',
            child: Icon(Icons.home, color: Colors.white),
          ),
          Hero(
            tag: 'search-icon',
            child: Icon(Icons.shopping_bag, color: Colors.white),
          ),
          Hero(
            tag: 'profile-icon',
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
