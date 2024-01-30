import 'package:flutter/material.dart';

class Elevated_Button extends StatefulWidget {
  const Elevated_Button({super.key});

  @override
  State<Elevated_Button> createState() => _Elevated_ButtonState();
}

class _Elevated_ButtonState extends State<Elevated_Button> {
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 10, 
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold
      )
    );
    return Center(
      child: ElevatedButton(
        onPressed: (){}, 
        child: Text('Elevated button'),
        style: buttonStyle,
      ),
    );
  }
}