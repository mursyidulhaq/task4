import 'package:flutter/material.dart';
import 'package:task4/ui/login.dart';

class Home extends StatefulWidget {

  final String user;
  final String pass;

  const Home({Key key, this.user, this.pass}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            child: Center(
              child: Text('Username anda adalah : ${widget.user}'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Password anda adalah : ${widget.pass}'),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('Logout'),
              onPressed:() {
                Navigator.pop(context,MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          )
        ],
      ),

    );
  }
}
