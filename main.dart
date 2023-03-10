import 'package:flutter/material.dart';
// import 'package:matrix_link/pages/homepage.dart';
import 'package:matrix_link/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        // HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
