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
            clipBehavior: Clip.none,                                          // Controls how to clip                      
            borderRadius: BorderRadius.circular(40),                          // The border radius of the rounded corners
            child: Image.network('https://picsum.photos/250?image=9'),        // Child- The widget below this widget in the tree
          ),
        )
      )
    );
  }
}