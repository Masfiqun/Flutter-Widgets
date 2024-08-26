import "package:flutter/material.dart";
import "package:flutter_advanced_switch/flutter_advanced_switch.dart";

class advanced_switch extends StatefulWidget {
  const advanced_switch({super.key});

  @override
  State<advanced_switch> createState() => _advanced_switchState();
}

class _advanced_switchState extends State<advanced_switch> {

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
                  'Advanced Switch Button',
                  style: TextStyle(fontFamily: 'Stromlight'),
                  ),
                ),
        backgroundColor: Colors.teal[100],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdvancedSwitch(
              controller: _controller,
              enabled: true,
              height: 35,
              width: 100,
              borderRadius: const BorderRadius.all(Radius.circular(120)),
              inactiveColor: Colors.red,
              inactiveChild: Text('OFF'),
              activeChild: Text('ON'),
              thumb: ValueListenableBuilder<bool>(
                valueListenable: _controller,
                builder: (context, value, child) {
                  return Icon(
                    _controller.value
                      ? Icons.beenhere
                      : Icons.cancel
                  );
                },
              ),
            )

           
          ],
        ),
      ),
    );
  }
}