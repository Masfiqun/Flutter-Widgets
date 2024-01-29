// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      home: Widget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Widget extends StatefulWidget {
  const Widget({super.key});

  @override
  State<Widget> createState() => _WidgetState();
}

class _WidgetState extends State<Widget> {
  @override
  SafeArea build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        )
      )
    );
  }
}