import 'package:flutter/material.dart';

class text extends StatefulWidget {
  const text({super.key});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'Put your data here. You will have to put the data in Strings.', 
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}