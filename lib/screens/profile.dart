import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/screens/cart.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              const CircleAvatar(
                radius: 60,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
              const Gap(10),
              const Text(
                'RIHAN.M',
                style: TextStyle(fontSize: 20),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wish list',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('My oderders',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const Cart()));
                              },
                              child: const Text(
                                'Cart',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
