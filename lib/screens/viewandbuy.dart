import 'package:flutter/material.dart';

class Viewandbuy extends StatefulWidget {
  const Viewandbuy({super.key});

  @override
  State<Viewandbuy> createState() => _ViewandbuyState();
}

class _ViewandbuyState extends State<Viewandbuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Image.asset(
              'assets/ysl-removebg-preview.png',
              fit: BoxFit.cover,
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Yves Saint Laurent Y Eau De Parfum\n100ml\nRating:4.5/5',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(190, 40), backgroundColor: Colors.amber),
            child: const Text('Buy ₹1000'),
          )
        ],
      ),
    );
  }
}
