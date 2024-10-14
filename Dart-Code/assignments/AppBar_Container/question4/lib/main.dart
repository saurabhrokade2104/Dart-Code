// Question 4
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
        
        body: Container(
          
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.cyan,
                  ),
                ],
              ),
            ),
          ),
        ),
      
      

    );
  }
}