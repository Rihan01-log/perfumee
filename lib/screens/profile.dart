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
        title: Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(30),
            CircleAvatar(
              radius: 60,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
            Gap(10),
            Text(
              'RIHAN.M',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Wish list',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My oderders', style: TextStyle(fontSize: 20)),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () { 
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) => Cart()));
                            },
                            child: Text(
                              'Cart',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
