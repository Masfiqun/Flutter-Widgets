import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Charts/Bar%20Graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary; // sunAmount, monAmount,.......
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    //initialize bar data
    BarData myBarData = BarData(
      sumAmount: weeklySummary[0], 
      monAmount: weeklySummary[1], 
      friAmount: weeklySummary[2], 
      satAmount: weeklySummary[3], 
      thurAmount: weeklySummary[4], 
      tueAmount: weeklySummary[5], 
      wedAmount: weeklySummary[6]
    );
    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles))
        ),
        barGroups: myBarData.barData.map(
          (data) => BarChartGroupData(
            x: data.x,
            barRods: [
              BarChartRodData(
               toY: data.y,
               color: Colors.amber[700],
               borderRadius: BorderRadius.circular(5.0),
               width: 25,
               backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color: Colors.blue[100]
               )
              )
            ]
          )
        ).toList(),
      )
    );
  }
}

Widget getBottomTitles (double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  Widget text;
  switch(value.toInt()) {
    case 0:
      text = const Text('Sun', style: style,);
      break;
    case 1:
      text = const Text('Mon', style: style,);
      break;
    case 2:
      text = const Text('Tue', style: style,);
      break;
    case 3:
      text = const Text('Wed', style: style,);
      break;
    case 4:
      text = const Text('Thurs', style: style,);
      break;
    case 5:
      text = const Text('Fri', style: style,);
      break;
    case 6:
      text = const Text('Sat', style: style,);
      break;
    default:
      text = const Text('', style: style,);
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}