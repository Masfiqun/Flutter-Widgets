import "package:flutter/material.dart";

class toogle_switch extends StatefulWidget {
  const toogle_switch({super.key});

  @override
  State<toogle_switch> createState() => _toogle_switchState();
}

class _toogle_switchState extends State<toogle_switch> {

  bool value = false;

  bool theme = false;

  final _controller = ValueNotifier<bool>(false);

  @override
  void initState(){
    super.initState();
    _controller.addListener((){
      setState(() {
        if(_controller.value){
          theme=true;
        }else{
          theme = false;
        }
      });
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'Toogle Switch Button',
                  style: TextStyle(fontFamily: 'Stromlight'),
                  ),
                ),
        backgroundColor: Colors.teal[100],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: value, 
              onChanged: (onChanged){
                setState(() {
                  value = onChanged;
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey[400],
              thumbColor: MaterialStateProperty.all(value
                ? Color.fromARGB(245, 12, 247, 118)
                : Color.fromARGB(245, 140, 139, 141)
              ),
            ),

            SizedBox(
              height: 300,
            ),

           
          ],
        ),
      ),
    );
  }
}