import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(title: Text("titulo"),) ,
        body:
          Center(
            child: Text('Gerson Eliezer Morales Hdz', textScaleFactor: 2.5,),
          ),
      )
    );
  }
}