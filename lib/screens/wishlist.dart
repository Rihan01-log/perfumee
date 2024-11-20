import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/ysl-removebg-preview.png',
                          height: 150,
                        )
                      ],
                    ),
                    const Gap(20),
                    const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Text(
                            'Yves Saint Laurent',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text('Perfume de Beauty\n 100ml'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
