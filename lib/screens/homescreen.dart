import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/screens/bvulgariitems.dart';
import 'package:perfumee/screens/chanelitems.dart';
import 'package:perfumee/screens/gucciitems.dart';

import 'package:perfumee/screens/yslitems.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final imagesForSlider = [
    'assets/40189731_3-bvlgari-aqva-pour-homme-eau-de-toilette.webp',
    'assets/chanel22-removebg-preview.png',
    'assets/ysl-removebg-preview.png',
    'assets/Gemini_Generated_Image_iv2noviv2noviv2n.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 80, 130),
        title: const Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 228, 80, 130),
                Color.fromARGB(255, 238, 120, 109)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Gap(10),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text(
                        'New Collection',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: imagesForSlider
                      .map((imagePath) => Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.fitHeight,
                                width: double.infinity,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                ),
                const Gap(10),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Offers',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 3,
                          child: SizedBox(
                            height: 200,
                            width: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/gucci234.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: SizedBox(
                          height: 200,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/ysl12345.webp',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Card(
                          elevation: 3,
                          child: SizedBox(
                            height: 200,
                            width: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/bvlgari.avif',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "More Products",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const Chanelitems()));
                        },
                        child: Card(
                          child: SizedBox(
                            height: 100,
                            width: 179,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/chanel bluemen.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const Gucciitems()));
                        },
                        child: SizedBox(
                          height: 100,
                          width: 179,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/gucii deghjkm,l;.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const Bvulgariitems()));
                        },
                        child: Card(
                          child: SizedBox(
                            height: 100,
                            width: 179,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/40189731_3-bvlgari-aqva-pour-homme-eau-de-toilette.webp',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => const YslItems()));
                        },
                        child: SizedBox(
                            height: 100,
                            width: 179,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
