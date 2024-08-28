// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/Authenticator/Main.dart';
import 'package:flutter_widgets/Widgets/H1.dart';
import 'package:flutter_widgets/Widgets/H2_clock.dart';
import 'package:flutter_widgets/Widgets/timeCounter.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'Widgets',
                  style: TextStyle(fontFamily: 'Stromlight'),
                  ),
                ),
        backgroundColor: Colors.teal[100],
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              // Text('Add Widget Here'),
              // SizedBox(height: 10,),
              // H1(),
              // H2_clock(),
              // timer_counter(),
              Auth()
            ],
          ),
        ),
      ),
    );
  }
}