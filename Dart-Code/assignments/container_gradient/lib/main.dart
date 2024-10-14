//Container Gradient

import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Gadient Demo",
              style: TextStyle(
              color: Colors.white,
            ),
            
            ),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),

          body: Center(
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment.bottomLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.pink,
                    Colors.black,
                  ],
                ),
              ),
              child: const Text(
                "Hello",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 89, 255),
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
        ),
      );
  }
}