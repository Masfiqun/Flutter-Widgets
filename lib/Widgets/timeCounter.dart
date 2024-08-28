import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/H3.dart';

class timer_counter extends StatefulWidget {
  const timer_counter({super.key});

  @override
  State<timer_counter> createState() => _timer_counterState();
}

class _timer_counterState extends State<timer_counter> {

  late Stopwatch _watch;
  late Timer _timer;
  late Duration _duration;

  void onStart(){
    setState(() {
      _watch = Stopwatch();
      _timer = Timer.periodic(Duration(milliseconds: 250), onTimeOut);
    });
    _watch.start();
  }

  void onStop(){
    _timer.cancel();
    _watch.stop();
  }

  void onTimeOut(Timer timer){
    if(_watch.isRunning) {
    setState(() => _duration = _watch.elapsed);
    }
  }

  void onClear(Duration value){
    setState(() => _duration = Duration());
  }


  @override
  void initState(){
    super.initState();
  _duration = Duration();
  _watch = Stopwatch();
  }

  @override
  void dispose(){
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: [
            H3(
              color: Colors.amber, 
              duration: _duration, 
              onClear: onClear
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: onStart, 
                    child: Text('Start')
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: onStop, 
                    child: Text('Stop')
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}