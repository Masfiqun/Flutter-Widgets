import 'package:flutter/material.dart';

class circular_Progress_indicator extends StatefulWidget {
  const circular_Progress_indicator({Key? key}) : super(key: key);

  @override
  State<circular_Progress_indicator> createState() => _circular_Progress_indicatorState();
}

class _circular_Progress_indicatorState extends State<circular_Progress_indicator> with SingleTickerProviderStateMixin {
 
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('circular_Progress_indicator'),
              CircularProgressIndicator(
                backgroundColor: Colors.tealAccent,
                valueColor: AlwaysStoppedAnimation(Colors.deepPurpleAccent),
              )
            ],
          ),
        ),
      )
    );
  }
}
