import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'es', 'grandioso', "y","divertido!"];
  String displayedString = "hola mundo";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Titulo del stateful W"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 40.0,color: Colors.lightBlue, fontStyle: FontStyle.italic)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text(
                  "presioname",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.cyan,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}