// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class center extends StatefulWidget {
  const center({super.key});

  @override
  State<center> createState() => _centerState();
}

class _centerState extends State<center> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        heightFactor: double.infinity,                        // If non-null, sets its height to the child's height multiplied by this factor
        widthFactor: double.infinity,                         // If non-null, sets its width to he child's width multiplied by this factor             
        child: Text('Everything will be centered here'),      // The widget below this widget in the tree
      )
    );
  }
}