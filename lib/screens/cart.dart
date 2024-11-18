import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        color: Colors.white,
                        height: 240,
                        width: 184,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/ysl-removebg-preview.png',
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Yves Saint Laurent',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),
                            ),
                            Gap(2),
                            Row(
                              children: [Text('Perfume de Beauty\n 100ml')],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add cart'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                            )
                          ],
                        ),
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
