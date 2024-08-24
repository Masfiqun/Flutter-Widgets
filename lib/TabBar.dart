import 'package:flutter/material.dart';

class TebBar extends StatefulWidget {
  const TebBar({super.key});

  @override
  State<TebBar> createState() => _TebBarState();
}

class Choice{
  final String title;
  final IconData icon;

  Choice({
    required this.icon, 
    required this.title
  });
}

class _TebBarState extends State<TebBar> with SingleTickerProviderStateMixin {

  late TabController _controller;
  List<Choice> _items = <Choice>[
    Choice(title: 'CAR', icon: Icons.directions_car),
    Choice(title: 'BICYCLE', icon: Icons.directions_bike),
    Choice(title: 'BOAT', icon: Icons.directions_boat),
    Choice(title: 'BUS', icon: Icons.directions_bus),
    Choice(title: 'WALK', icon: Icons.directions_walk),
    Choice(title: 'RAILWAY', icon: Icons.directions_railway),
  ];

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: _items.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Tab Bar')),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0), 
          child: Theme(
            data: Theme.of(context).copyWith(hintColor: Colors.white ),
            child: Container(
              height: 48.0,
              alignment: Alignment.center,
              child: TabPageSelector(
                color: Colors.white,
                controller: _controller,
              ),
            ),
          )
        ),
      ),

      body: TabBarView(
        controller: _controller,
        children: _items.map((Choice item) {
          return Container(
            padding: EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                children: [
                  Text(item.title),
                  Icon(item.icon, size: 120.0, color: Colors.tealAccent,)
                ],
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}