import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

List<String> brands = [
  'Gucci',
  'Ysl',
  'Chanel',
  'Bvulgari',
];
String? newvalue;

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
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
            const Gap(30),
            const CircleAvatar(
              radius: 60,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Image')),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                  isExpanded: true,
                  value: newvalue,
                  hint: const Text(
                    "Brand",
                    style: TextStyle(color: Colors.white),
                  ),
                  items: brands.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      newvalue = value;
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 60, horizontal: 120),
                    hintText: 'Type something',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _addToCart('item added');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    200,
                    40,
                  ),
                  backgroundColor: Colors.amber),
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

  void _addToCart(String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('item added'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
