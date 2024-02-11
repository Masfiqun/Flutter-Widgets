import 'package:flutter/material.dart';

class Linear_Progress_Indicator extends StatefulWidget {
  const Linear_Progress_Indicator({Key? key}) : super(key: key);

  @override
  State<Linear_Progress_Indicator> createState() => _Linear_Progress_IndicatorState();
}

class _Linear_Progress_IndicatorState extends State<Linear_Progress_Indicator> with SingleTickerProviderStateMixin {
 
 late AnimationController controller;
 
 @override
 void initState() {
  super.initState();
  controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 5),
  )..addListener(() {
    setState(() {});
  });
  controller.repeat(reverse: true);
 }

 @override
 void dispose() {
  controller.dispose();
  super.dispose();
 }
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Linear_Progress_Indicator'),
            LinearProgressIndicator(
              backgroundColor: Colors.amberAccent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
              value: controller.value,
            ),
          ],
        ),
      )
    );
  }
}
