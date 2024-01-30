// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widgets/ClipRRect.dart';
import 'package:flutter_widgets/Column.dart';
import 'package:flutter_widgets/Divider.dart';
import 'package:flutter_widgets/Elevated_Button.dart';
import 'package:flutter_widgets/FloatingAction_Button.dart';
import 'package:flutter_widgets/Row.dart';
import 'package:flutter_widgets/SafeArea.dart';
import 'package:flutter_widgets/SizedBox.dart';
import 'package:flutter_widgets/Text.dart';
import 'package:flutter_widgets/Tooltip.dart';
import 'package:flutter_widgets/Dropdown_Button.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      home: floatingbutton(),
      // Elevated_Button(),
      //DropdownMenuExample(),
      // TooltipSample(),
      // divider(),
      // safearea(),
      // sizedbox(),
      // text(),
      // roow(),
      // col(),
      // clip(),
    );
  }
}

