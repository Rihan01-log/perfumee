import 'package:flutter/material.dart';
import 'package:perfumee/screens/addpage.dart';
import 'package:perfumee/screens/homescreen.dart';

import 'package:perfumee/screens/piechart.dart';
import 'package:perfumee/screens/profile.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigatioPage extends StatefulWidget {
  const NavigatioPage({super.key});

  @override
  State<NavigatioPage> createState() => _NavigatioPageState();
}

class _NavigatioPageState extends State<NavigatioPage> {
  int currentIndex = 0;

  final List<Widget> perfumeePages = [
    Homescreen(),
    Addpage(),
    Piechart(),
    Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: perfumeePages[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
            SalomonBottomBarItem(icon: Icon(Icons.add), title: Text('Add')),
            SalomonBottomBarItem(
                icon: Icon(Icons.pie_chart), title: Text('Chart')),
            SalomonBottomBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ]),
    );
  }
}
