import 'package:flutter/material.dart';
import 'package:myapp/pages/loginPage.dart';
import 'package:myapp/pages/homePage.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    ));
