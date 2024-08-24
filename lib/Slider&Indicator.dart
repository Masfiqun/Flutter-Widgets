import 'package:flutter/material.dart';

class SI extends StatefulWidget {
  const SI({super.key});

  @override
  State<SI> createState() => _SIState();
}

class _SIState extends State<SI> {

  double _value = 0.0;

  void _onChanged(double value) => setState(() {
    _value = value;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Slider & Indicators')),
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Slider(value: _value, onChanged: _onChanged),
              Container(
                padding: EdgeInsets.all(32.0),
                child: LinearProgressIndicator(
                  value: _value,
                  valueColor: AlwaysStoppedAnimation(Colors.red[300]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                child: CircularProgressIndicator(
                  value: _value,
                  valueColor: AlwaysStoppedAnimation(Colors.amber[900]),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}