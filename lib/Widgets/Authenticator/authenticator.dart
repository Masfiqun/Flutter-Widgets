import 'package:flutter/material.dart';

class Authenticator extends StatefulWidget {
  const Authenticator({
    super.key,
    required this.onAuthenticated
  });
  final ValueChanged<bool> onAuthenticated;

  @override
  State<Authenticator> createState() => _AuthenticatorState(onAuthenticated: onAuthenticated);
}

class _AuthenticatorState extends State<Authenticator> {
  _AuthenticatorState({
    required this.onAuthenticated
  });

  late TextEditingController _user;
  late TextEditingController _pass;
  final ValueChanged<bool> onAuthenticated;

  void onClicked(){
    if(_user.text != 'user' || _pass.text != '1234'){
      onAuthenticated(false);
    }else{
      onAuthenticated(true);
    }
  }

  @override
  void initState(){
    super.initState();
    _pass = TextEditingController();
    _user = TextEditingController();
  }

  @override
  void dispose(){
    super.dispose();
    _pass.dispose();
    _user.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _user,
              decoration: InputDecoration(labelText: 'Username'),
            ),

            TextField(
              controller: _pass,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: onClicked, 
                child: Text('LogIn')
              ),
            )
          ],
        ),
      ),
    );
  }
}