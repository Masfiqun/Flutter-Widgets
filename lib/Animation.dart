import 'package:flutter/material.dart';

class BorderRadiusLerpExample extends StatefulWidget {
  @override
  _BorderRadiusLerpExampleState createState() => _BorderRadiusLerpExampleState();
}

class _BorderRadiusLerpExampleState extends State<BorderRadiusLerpExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInQuart,
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.lerp(
                  BorderRadius.circular(0),  // Start with square corners
                  BorderRadius.circular(100), // End with rounded corners
                  _animation.value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: BorderRadiusLerpExample()));
