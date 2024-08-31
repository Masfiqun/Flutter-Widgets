import 'package:flutter/material.dart';
import 'package:flutter_widgets/globalState/global_state.dart';

/* For Global Statement */

// class Second extends StatefulWidget {
//   const Second({super.key});

//   @override
//   State<Second> createState() => _SecondState();
// }

// class _SecondState extends State<Second> {

//   GlobalState _store = GlobalState.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//                   'Name pasted here',
//                   style: TextStyle(fontFamily: 'Stromlight'),
//                   ),
//                 ),
//         backgroundColor: Colors.teal[100],
//       ),

//       body: Container(
//         padding: EdgeInsets.all(32.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text('Hello ${_store.get('name')}'),
//               ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Back'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/* For Passing Variables */

class Second extends StatefulWidget {
  const Second({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'variable passed here',
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
              Text('Hello ${widget.name}'),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){Navigator.of(context).pop();}, 
                child: Text('Back', style: TextStyle(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}