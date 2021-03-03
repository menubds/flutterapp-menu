import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState  createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Please login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      hintText: 'Enter username'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      username.text != null && password.text != null ? Navigator.pushNamed(context, '/home') :
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text('Please enter username and password'),
                            );
                          }
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text("Signup"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

}