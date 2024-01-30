import 'package:flutter/material.dart';


class col extends StatefulWidget {
  const col({super.key});

  @override
  State<col> createState() => _colState();
}

class _colState extends State<col> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1st'),
          Text('2nd'), //contents of column
          Text('3rd'),
        ],
      )
    );
  }
}