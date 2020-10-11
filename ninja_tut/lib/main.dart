import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
          children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Image.network('https://picsum.photos/200/300?grayscale')),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: Text('1'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.pinkAccent,
                  child: Text('2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.amber,
                  child: Text('3'),
                ),
              ),
          ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
        child: Text('henlo'),
        backgroundColor: Colors.red,
      ),
    );
  }
}