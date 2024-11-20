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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('PERFUMEE',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
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
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(190, 40),
                  backgroundColor: Colors.amber),
              child: const Text(
                'Buy ₹1000',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
