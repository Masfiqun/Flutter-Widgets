import 'package:flutter/material.dart';

class chipsAdding extends StatefulWidget {
  const chipsAdding({super.key});

  @override
  State<chipsAdding> createState() => _chipsAddingState();
}

class _chipsAddingState extends State<chipsAdding> {

  int counter = 0;
  final List<Widget> _list = [];

  @override
  void initState(){
    for(int i=0; i<5; i++){
      Widget child = _newItem(i);
      _list.add(child);
    }
  }

  void _onClicked(){
    Widget child = _newItem(counter);
    setState(() {
      _list.add(child);
    });
  }

  Widget _newItem(int i){
    Key key = Key('item_${i}');
    Container child = new Container(
      key: key,
      padding: new EdgeInsets.all(10.0),
      child: new Chip(
        label: new Text('${i} Name here'),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: 'Deleted',
        onDeleted: () => _removedItem(key),
        avatar: new CircleAvatar(
          backgroundColor: Colors.tealAccent,
          child: Text(i.toString()),
        ),
      ),
    );
    counter++;
    return child;
  }

  void _removedItem(Key key){
    for(int i=0; i<_list.length; i++){
      Widget child = _list.elementAt(i);
      if(child.key == key){
        setState(() {
          _list.removeAt(i);
        });
        print('Removing ${key.toString()}');
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chips'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        child: Icon(Icons.add),
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: _list
          ),
        ),
      ),
    );
  }
}