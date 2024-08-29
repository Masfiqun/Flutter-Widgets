import 'package:flutter/material.dart';
import 'package:flutter_widgets/globalState/global_state.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  GlobalState _store = GlobalState.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'Name pasted here',
                  style: TextStyle(fontFamily: 'Stromlight'),
                  ),
                ),
        backgroundColor: Colors.teal[100],
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Text('Hello ${_store.get('name')}'),
              ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}