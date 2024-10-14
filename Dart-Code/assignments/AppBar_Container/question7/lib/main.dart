// Question 7

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
          title: const Text("Container in Row"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),

              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),

              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),

              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),

              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),

              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
         


            ],
          ),
        ),
      ),
    );
  }
}