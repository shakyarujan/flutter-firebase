import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/home/home.dart';
import 'package:flutter_firebase/pages/profile/profile.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  final List<Widget> _pageOptions = [
    const Home(),
    const Profile(),
    const Profile(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', tooltip: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search', tooltip: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: 'Add', tooltip: 'Add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
            tooltip: 'Profile',
          )
        ],
        iconSize: 32.0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageOptions,
      ),
    );
  }
}
