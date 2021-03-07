import 'package:flutter/material.dart';
import 'package:my_profile/screen/gallery_screen.dart';
import 'package:my_profile/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  var pages = [
    {
      "title": "Profile",
      "screen": ProfileScreen(),
    },
    {
      "title": "Gallery",
      "screen": GalleryScreen(),
    },
  ];

  _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text(pages[_currentIndex]["title"])),
        body: pages[_currentIndex]["screen"],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _setCurrentIndex,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "ข้อมูลส่วนตัว",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              label: "แกลเลอรี่",
            ),
          ],
        ),
      ),
    );
  }
}
