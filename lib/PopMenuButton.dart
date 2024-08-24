import 'package:flutter/material.dart';

class PopMenuButton extends StatefulWidget {
  const PopMenuButton({super.key});

  @override
  State<PopMenuButton> createState() => _PopMenuButtonState();
}

enum Animals{Cat, Dog, Bird, Lizard, Fish}

class _PopMenuButtonState extends State<PopMenuButton> {

  Animals _selected = Animals.Cat;
  String _value = 'Make a selection';
  List<PopupMenuItem<Animals>> _items = [];

  @override
  void initState(){
    super.initState();
    for(Animals animal in Animals.values){
      _items.add(PopupMenuItem<Animals>(
        child: 
          Text(_getDisplay(animal)),
          value: animal,
        )
      );
    }
  }

  void _onSelected(Animals animal){
    setState(() {
      _selected = animal;
      _value = 'You selected ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal){
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pop Menu Button')),
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_value),
              ),

              PopupMenuButton(
                child: Icon(Icons.arrow_circle_down),
                initialValue: Animals.Cat,
                onSelected: _onSelected,
                itemBuilder: (BuildContext context){
                  return _items;
                }
              )
            ]
          ),
        ),
      ),
    );
  }
}