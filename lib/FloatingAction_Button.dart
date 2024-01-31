// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class floatingbutton extends StatefulWidget {
  const floatingbutton({super.key});

  @override
  State<floatingbutton> createState() => _floatingbuttonState();
}

class _floatingbuttonState extends State<floatingbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
          ),
           FloatingActionButton.extended(
            onPressed: (){}, 
            label: Text('Add'),
            icon: Icon(Icons.add),
            hoverColor: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}