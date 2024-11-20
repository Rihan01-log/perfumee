import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatelessWidget {
  final Map<String, double> data = {
    "Bvlgari": 25,
    "Gucci": 25,
    "Chanel": 25,
    "Ysl": 25
  };
  final List<Color> colorList = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow
  ];

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
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
        child: PieChart(
          key: const Key("pie_chart"),
          dataMap: data,
          colorList: colorList,
          chartRadius: MediaQuery.of(context).size.width / 2.2,
          legendOptions: const LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
            showChartValuesOutside: true,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}
