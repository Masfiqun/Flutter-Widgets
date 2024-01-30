// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

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
        mainAxisAlignment: MainAxisAlignment.start,                 // How the children should be placed along the main Axis
        mainAxisSize: MainAxisSize.max,                             // How much space should be occupied in the main axis
        crossAxisAlignment: CrossAxisAlignment.center,              // How the children should be placed along the cross axis
        verticalDirection: VerticalDirection.down,                  // Determines the order to lay children out vertically and how to interpret start and end in the vertical direction
        textDirection: TextDirection.rtl,                           // Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction
        textBaseline: TextBaseline.alphabetic,                      // If aligning items according to their baseline, which baseline to use
        children: [
          Text('1st'),
          Text('2nd'),                                              //contents of column
          Text('3rd'),
        ],
      )
    );
  }
}