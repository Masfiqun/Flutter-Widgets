import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChart extends StatefulWidget {
  const BarChart(BarChartData barChartData, {super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class IndividualBar {
  final int x; //x-axis position
  final double y; // y-axis position

  IndividualBar({
    required this.x,
    required this.y,
  });
}

class BarData {
  final double sumAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sumAmount,
    required this.monAmount,
    required this.friAmount,
    required this.satAmount,
    required this.thurAmount,
    required this.tueAmount,
    required this.wedAmount,
  });

  List<IndividualBar> barData = [];

  //initial bar data
  void initializeBarData(){
    barData = [
    IndividualBar(x: 0, y: sumAmount),
    IndividualBar(x: 0, y: monAmount),
    IndividualBar(x: 0, y: tueAmount),
    IndividualBar(x: 0, y: wedAmount),
    IndividualBar(x: 0, y: thurAmount),
    IndividualBar(x: 0, y: friAmount),
    IndividualBar(x: 0, y: satAmount),
    ];
  }

}

class _BarChartState extends State<BarChart> {

  // List of weekly expose
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.68,
    12.6,
    98.73,
    88.99,
    90.10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: MyBarGraph(),
        ),
      ),
    );
  }
}

class MyBarGraph extends StatelessWidget {
  const MyBarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 200,
        minY: 0,
      )
    );
  }
}