import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/screens/viewandbuy.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => Viewandbuy()));
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/ysl-removebg-preview.png',
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      const Gap(13),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'YSL Perfume for men',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text('M.R.p:₹10000'),
                          Text('100 ml')
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(12),
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/chanel22-removebg-preview.png',
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      const Gap(13),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CHANEL Perfume for men',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text('M.R.p:₹10000'),
                          Text('100 ml')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
