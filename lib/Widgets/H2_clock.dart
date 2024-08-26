import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class H2_clock extends StatefulWidget {
  const H2_clock({super.key});

  @override
  State<H2_clock> createState() => _H2_clockState();
}

class _H2_clockState extends State<H2_clock> {

  String value = 'Time Here';
  late Timer _timer;

  @override
  void initState(){
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
  }

  void _onTimer(Timer timer){
    var now = DateTime.now();  // calling the current date & time
    var formatter = DateFormat('hh:mm:ss');   // formating the time
    String formatted = formatter.format(now);
    setState(() => value = formatted);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      value,   // visually representing the time
      style: TextStyle(fontSize: 32),
       );
  }
}