import "package:flutter/material.dart";

class clip extends StatefulWidget {
  const clip({super.key});

  @override
  State<clip> createState() => _clipState();
}

class _clipState extends State<clip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40), //how much round you want to make the image border
            child: Image.network('https://picsum.photos/250?image=9'), //way to input a picture 
          ),
        )
      )
    );
  }
}