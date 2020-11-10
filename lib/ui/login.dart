import 'package:flutter/material.dart';
import 'package:task4/ui/home.dart';


class Login extends StatefulWidget {



  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username,password;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login')
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle
            ),
            child: Center(
              child: Icon(Icons.person,size: 90,),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Username';
                }
                return null;
              },
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "username"

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input password';
                }
                return null;
              },
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "password"

              ),
            ),
          ),
          Container(
            child: RaisedButton(

              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              onPressed: (){
                username = usernameController.text;
                password = passwordController.text;

                if (username == "admin" &&
                    password == "admin") {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home(user : username,pass :password)),
                  );
                } else {
                  print("pasword atau username salah");

                }

              },
            ),
          )
        ],
      ),
    );
  }

}
