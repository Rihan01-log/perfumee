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
    const Homescreen(),
    const Addpage(),
    const Piechart(),
    const Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: perfumeePages[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
          backgroundColor: Colors.black26,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.home), title: const Text('Home')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.add), title: const Text('Add')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.pie_chart), title: const Text('Chart')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.person), title: const Text('Profile'))
          ]),
    );
  }
}
