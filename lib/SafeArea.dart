// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class safearea extends StatefulWidget {
  const safearea({super.key});

  @override
  State<safearea> createState() => _safeareaState();
}

class _safeareaState extends State<safearea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text('The data will show in a safe area of the display.'),
      )
    );
  }
}

//SafeArea widget will make sure to show the data in a position where the upper notification & signal bar will be avoided