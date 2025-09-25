import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'HomePage.dart';
import 'EventPage.dart';

class MainNavigationPage extends StatefulWidget {
  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {

  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0); // Corrected initialPage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          AboutPage(),

          EventPage(),

          HomePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        elevation: 8.0,
        backgroundColor: Colors.white, //
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About GRC'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
