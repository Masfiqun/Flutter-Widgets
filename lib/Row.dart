// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,           // How the children should be placed along the main axis
        mainAxisSize: MainAxisSize.max,                             // How much space should be occupied in the axis
        crossAxisAlignment: CrossAxisAlignment.start,               // How the children should be placed along the cross axis
        textBaseline: TextBaseline.alphabetic,                      // If aligning items according to their baseline, which baseline to use
        textDirection: TextDirection.ltr,                           // Determines the order to lay children out horizontally and how to interpret start and end in the horizontal direction
        verticalDirection: VerticalDirection.down,                  // Determines the order to lay children out vertically and how to interpret start and end in the vertical direction
        children: [
          Text('1'), //contents of row
          Text('2'),
          Text('3')
        ],
      )
    );
  }
}