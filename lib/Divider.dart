// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class divider extends StatefulWidget {
  const divider({super.key});

  @override
  State<divider> createState() => _dividerState();
}

class _dividerState extends State<divider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('1st line'),
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.deepPurpleAccent,
          ),          //this widget will make a divider in between two text widget or any other widget.
          Text('2nd line'),
        ],
      )
    );
  }
}