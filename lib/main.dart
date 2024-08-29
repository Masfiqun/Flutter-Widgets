// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
 
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Circular_Progress_Indicator.dart';
import 'package:flutter_widgets/ClipRRect.dart';
import 'package:flutter_widgets/Column.dart';
import 'package:flutter_widgets/Divider.dart';
import 'package:flutter_widgets/Elevated_Button.dart';
import 'package:flutter_widgets/FloatingAction_Button.dart';
import 'package:flutter_widgets/Linear_Progress_Indicator.dart';
import 'package:flutter_widgets/Row.dart';
import 'package:flutter_widgets/SafeArea.dart';
import 'package:flutter_widgets/SizedBox.dart';
import 'package:flutter_widgets/Text.dart';
import 'package:flutter_widgets/Tooltip.dart';
import 'package:flutter_widgets/Dropdown_Button.dart';
import 'package:flutter_widgets/Widgets/Authenticator/Main.dart';
import 'package:flutter_widgets/chipsAdding.dart';
import 'package:flutter_widgets/Slider&Indicator.dart';
import 'package:flutter_widgets/PopMenuButton.dart';
import 'package:flutter_widgets/ExpansionPanel.dart';
import 'package:flutter_widgets/TabBar.dart';
import 'package:flutter_widgets/Animation.dart';
import 'package:flutter_widgets/Stepping.dart';
import 'package:flutter_widgets/Charts/Bar Graph/home_page.dart';
import 'package:flutter_widgets/Switch/toogle_switch.dart';
import 'package:flutter_widgets/Switch/Advanced switch.dart';
import 'package:flutter_widgets/Widgets/widget.dart';
import 'package:flutter_widgets/globalState/home.dart';
import 'package:flutter_widgets/globalState/second.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        '/Second': (BuildContext contrext) => Second()
      },
      home: 
      // circular_Progress_indicator()
      //Linear_Progress_Indicator(),
      // floatingbutton(),
      // Elevated_Button(),
      // DropdownButtonExample(),
      // TooltipSample(),
      //divider(),
      // safearea(),
      // sizedbox(),
      // text(),
      // roow(),
      // col(),
      // clip(),
      // chipsAdding(),
      // SI(),
      // PopMenuButton(),
      // Expansion(),
      // TebBar(),
      // StepProgressor(),
      // Homepage(),
      // toogle_switch()
      // advanced_switch()
      // Auth()
      // Home()
      BorderRadiusLerpExample()
    );
  }
}

