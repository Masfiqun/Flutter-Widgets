import 'dart:ffi';

import 'package:flutter/material.dart';

class Linear_Progress_Indicator extends StatefulWidget {
  const Linear_Progress_Indicator({super.key});

  @override
  State<Linear_Progress_Indicator> createState() => _Linear_Progress_IndicatorState();
}

class _Linear_Progress_IndicatorState extends State<Linear_Progress_Indicator> {
 
 late AnimationController controller;
 @override
 void initState(){
  controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 5),
  )..addListener(() {
    setState(() {});
  });
  controller.repeat(reverse: true);
  super.initState();
 }

 @override
 void dispose(){
  controller.dispose();
  super.dispose();
 }
 
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Linear_Progress_Indicator'),
          LinearProgressIndicator(
            value: controller.value,
          ),
        ],
      )
    );
  }
}