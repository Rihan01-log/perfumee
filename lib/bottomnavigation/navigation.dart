import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:perfumee/screens/homescreen.dart';
import 'package:perfumee/screens/cart.dart';

class NavigatioPage extends StatefulWidget {
  const NavigatioPage({super.key});

  @override
  State<NavigatioPage> createState() => _NavigatioPageState();
}

class _NavigatioPageState extends State<NavigatioPage> {
  int currentIndex = 0;
  final List<Widget> perfumeePages = [Homescreen(), CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: perfumeePages[currentIndex],
      bottomNavigationBar: DiamondBottomNavigation(
        height: 50,
        itemIcons: const [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
        centerIcon: Icons.place,
        selectedIndex: currentIndex,
        onItemPressed: (p0) {
        
        },
      ),
    );
  }
}
