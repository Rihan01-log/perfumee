import 'package:flutter/material.dart';

class Piechart extends StatefulWidget {
  const Piechart({super.key});

  @override
  State<Piechart> createState() => _PiechartState();
}

class _PiechartState extends State<Piechart> {
final Map<String,double> dataMap={
  'Gucci':25,
  'Ysl':20,
  'Chanel':25,
  'Bvlgari':30,
  
};
final List<Color> colrList=[
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.yellow
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pie Chart'),
        centerTitle: true,
      ),
      body:  Piechart(
        
      ),
    );
  }
}
