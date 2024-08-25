import 'package:flutter/material.dart';
import 'package:flutter_widgets/Charts/Bar%20Graph/bar_graph.dart';

/*

TASK:AboutDialog

List of weekly expense using bar chart


*/



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // List of weekly expose
  List<double> weeklySummary = [
    70.40,
    2.50,
    42.42,
    10.50,
    80.68,
    12.6,
    90.73,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'Bar Graph',
                  style: TextStyle(fontFamily: 'Stromlight'),
                  ),
                ),
        backgroundColor: Colors.teal[100],
      ),

      body: Center(
        child: SizedBox(
          height: 500,
          child: MyBarGraph(
            weeklySummary: weeklySummary,
          ),
        ),
      ),
    );
  }
}