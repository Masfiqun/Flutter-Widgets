import 'package:flutter/material.dart';

class sizedbox extends StatefulWidget {
  const sizedbox({super.key});

  @override
  State<sizedbox> createState() => _sizedboxState();
}

class _sizedboxState extends State<sizedbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(     // A roundish rectangular shape will form by using this Widget.
        height: 50,
        width: 50,
      ),
    );
  }
}