import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Container_1",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container 1"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,

          child:Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              ),
            ],
          ),

        ),
      ),
    );
  }
}
