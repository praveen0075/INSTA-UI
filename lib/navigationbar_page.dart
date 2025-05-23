import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/add_feed_page.dart';
import 'package:instagram_ui/pages/home_page.dart';
import 'package:instagram_ui/pages/profile_page.dart';
import 'package:instagram_ui/pages/reels_page.dart';
import 'package:instagram_ui/pages/search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    Homepage(),
    SearchPage(),
    AddFeedPage(),
    ReelsPage(),
    ProfilePage(),
  ];

  void _navigateThroughPages(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.black),
        onTap: _navigateThroughPages,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "",
          ),
        ],
      ),
    );
  }
}
