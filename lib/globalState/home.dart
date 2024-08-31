import 'package:flutter/material.dart';
import 'package:flutter_widgets/globalState/global_state.dart';
import 'package:flutter_widgets/globalState/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late TextEditingController _name;
  GlobalState _store = GlobalState.instance;

  @override
  void initState(){
    super.initState();
    _name = TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  void onPressed(){
    /*For Global State */
    // setState(() {
    //   _store.set('name', _name.text);
    // });
    // Navigator.of(context).pushNamed('/Second');

    /*For passing variables */
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) => Second(name: _name.text)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'State Management',
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
              TextField(
                controller: _name,
                decoration: InputDecoration(labelText: 'Enter your name'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: onPressed, 
                child: Text('Next', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Background color
                  onPrimary: Colors.amber[100], // Text color
                  shadowColor: Colors.deepPurpleAccent[400], // Shadow color
                  elevation: 5, // Elevation (depth effect)
                  shape: RoundedRectangleBorder( // Rounded corners
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}