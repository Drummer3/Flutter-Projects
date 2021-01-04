import 'package:flutter/material.dart';
import 'package:serious_app/home.dart';

void main() => runApp(MaterialApp(
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {

  @override
  TextEditingController nameValue = TextEditingController();
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
                            controller: nameValue,
                            style: TextStyle(
                              color: Colors.deepOrange[900],
                            ),
                            decoration: new InputDecoration(
                                labelText: "სახელი",
                                labelStyle: TextStyle(
                                  color: Colors.orange[300],
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                      color: Colors.deepOrange[900]),
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
                              color: Colors.deepOrange[900],
                            ),
                            decoration: new InputDecoration(
                                labelText: "გვარი",
                                labelStyle: TextStyle(
                                  color: Colors.orange[300],
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide:
                                      new BorderSide(color: Colors.orange[200]),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                      color: Colors.deepOrange[900]),
                                )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: Colors.orange[100])),
                            color: Colors.orange[500],
                            textColor: Colors.orange[50],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(nameValue: nameValue),
                              );
                            },
                            child: Text(
                              'შესვლა',
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
