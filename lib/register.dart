import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(Register());

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState  createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  void _checkForm({email: String, password: String, confirmPassword: String }) {

    if(email == "" || email == null){

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Please enter email'),
            );
          }
      );

    }
    else if(password == "" || password == null){

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Please enter password'),
            );
          }
      );

    }
    else if(confirmPassword != password){

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Confirm password not match'),
            );
          }
      );

    }
    else {

//      _register();

    }


  }

//  void _register() async {
//
//    try {
//      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//          email: email.text,
//          password: password.text
//      );
//
//      if(userCredential != null){
//
//        Navigator.pushNamed(context, '/home');
//
//      }
//    } on FirebaseAuthException catch (e) {
//      if (e.code == 'weak-password') {
//        print('The password provided is too weak.');
//      } else if (e.code == 'email-already-in-use') {
//        print('The account already exists for that email.');
//      }
//    } catch (e) {
//      print(e);
//    }
//
//  }

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
                Text("Register", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: 'Enter email'
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
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: TextField(
                    obscureText: true,
                    controller: confirmPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter confirm password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text("Submit", style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        _checkForm(email: email.text, password: password.text, confirmPassword: confirmPassword.text);
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