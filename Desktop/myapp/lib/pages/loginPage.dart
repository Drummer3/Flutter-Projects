import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  @override
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Container(
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: new Stack(
            //alignment:new Alignment(x, y)
            children: <Widget>[
              new Positioned(
                child: new Align(
                  alignment: FractionalOffset.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/Login.png',
                      height: 150.0,
                    ),
                  ),
                ),
              ),
              new Positioned(
                child: new Align(
                  alignment: FractionalOffset.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.orange[500],
                            ),
                            decoration: new InputDecoration(
                                labelText: "Enter Email",
                                labelStyle: TextStyle(
                                  color: Colors.orange[300],
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:
                                      new BorderSide(color: Colors.orange[500]),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:
                                      new BorderSide(color: Colors.orange[200]),
                                )),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Center(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.orange[500],
                            ),
                            obscureText: true,
                            decoration: new InputDecoration(
                                labelText: "Enter Password",
                                labelStyle: TextStyle(
                                  color: Colors.orange[300],
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:
                                      new BorderSide(color: Colors.orange[500]),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:
                                      new BorderSide(color: Colors.orange[200]),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              new Positioned(
                child: new Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      height: 75.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.orange[100])),
                        color: Colors.orange[500],
                        textColor: Colors.orange[50],
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
