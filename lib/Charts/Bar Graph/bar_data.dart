import 'package:flutter_widgets/Charts/Bar%20Graph/individual_bar.dart';

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
    IndividualBar(x: 1, y: monAmount),
    IndividualBar(x: 2, y: tueAmount),
    IndividualBar(x: 3, y: wedAmount),
    IndividualBar(x: 4, y: thurAmount),
    IndividualBar(x: 5, y: friAmount),
    IndividualBar(x: 6, y: satAmount),
    ];
  }

}