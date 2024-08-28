import "package:flutter/material.dart";
import "package:flutter_widgets/Widgets/Authenticator/authenticator.dart";

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  late bool _isAuthenticated;

  void _onAuthenticated(bool value){
    setState(() {
      _isAuthenticated = value;
    });
  }

  @override
  void initState(){
    super.initState();
    _isAuthenticated = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
                  'Log In System',
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
              Authenticator(onAuthenticated: _onAuthenticated),
              Text('Authenticated: ${_isAuthenticated}')
            ],
          ),
        ),
      ),
    );
  }
}