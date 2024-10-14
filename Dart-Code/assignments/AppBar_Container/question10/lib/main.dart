// Question 10
import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.red
              ),
              borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),
              bottomRight:Radius.circular(20),
              ),
            ),
          ),
          ),
      ),
    );
  }
}
