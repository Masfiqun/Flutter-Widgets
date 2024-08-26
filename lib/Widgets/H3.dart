import 'package:flutter/material.dart';

class H3 extends StatelessWidget {
  H3({
    super.key,
    required this.color,
    required this.duration,
    required this.onClear
  });

  Duration duration = Duration();
  Color color = Colors.green;
  final ValueChanged<Duration> onClear;

  void onClicked(){
    onClear(duration);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(32.0),
          child: Text(duration.toString(), style: TextStyle(fontSize: 32, color: color),),
        ),
        IconButton(
          onPressed: onClicked, 
          icon: Icon(Icons.clear)
        )
      ],
    );
  }
}