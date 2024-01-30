import 'package:flutter/material.dart';

class roow extends StatefulWidget {
  const roow({super.key});

  @override
  State<roow> createState() => _roowState();
}

class _roowState extends State<roow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('1'), //contents of row
          Text('2'),
          Text('3')
        ],
      )
    );
  }
}