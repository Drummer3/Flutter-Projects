import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Padding(
        padding: const EdgeInsets.all(50.0),
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
                      color: Colors.orange[200],
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.orange[300]),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.orange[100]),
                    )
                ),
              ),
            ),
            SizedBox(height: 45.0),
            Center(
              child: TextFormField(
                style: TextStyle(
                  color: Colors.orange[500],
                ),
                obscureText: true,
                decoration: new InputDecoration(
                    labelText: "Enter Password",
                    labelStyle: TextStyle(
                      color: Colors.orange[200],
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.orange[300]),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.orange[100]),
                    )
                ),
              ),
            ),
            SizedBox(height: 150.0),
            Center(
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.orange[100])
                ),
                color: Colors.orange[500],
                textColor: Colors.orange[50],
                onPressed: _launchURL,
                child: Text(
                  'Sign In'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  _launchURL() async {
    const url = 'tel:+995591080888';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
