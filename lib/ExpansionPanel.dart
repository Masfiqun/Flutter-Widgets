import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  const Expansion({super.key});

  @override
  State<Expansion> createState() => _ExpansionState();
}

class MyItem{
  bool isExpanded;
  final String header;
  final Widget body;

  MyItem(this.isExpanded, this.header, this.body);
}

class _ExpansionState extends State<Expansion> {

  List<MyItem> _items = [];

  @override
  void initState(){
    for(int i=0; i<10; i++){
      _items.add(MyItem(
        false,
        'Item ${i}', 
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Hello World'),
        )
      ));
    }
  }

  ExpansionPanel _createitem(MyItem item){
    return ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded){
        return Container(
          padding: EdgeInsets.all(5.0),
          child: Text('Header ${item.header}'),
        );
      }, 
      body: item.body,
      isExpanded: item.isExpanded
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ExpansionPanel')),
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: ListView(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded){
                setState(() {
                  _items[index].isExpanded =  !_items[index].isExpanded;
                });
              },
              children: _items.map(_createitem).toList(),
            )
          ],
        )
      ),
    );
  }
}