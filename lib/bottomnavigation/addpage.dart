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
        backgroundColor: Colors.red,
        title: Text(
          'PERFUMEE',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Gap(30),
          CircleAvatar(
            radius: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
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
                hint: Text("brand"),
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Price'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 60, horizontal: 120),
                  hintText: 'Type something',
                  border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  200,
                  40,
                ),
                backgroundColor: Colors.amber),
          )
        ],
      ),
    );
  }
}
