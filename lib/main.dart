import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:largest_twonumbers/screens/largestamongtwo.dart';

void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Largest among two numbers"),
          backgroundColor: Colors.green,

        ),
        body: CheckApp()
      ),
    );
  }
}
