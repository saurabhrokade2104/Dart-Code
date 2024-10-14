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
            "List View Builder"
            ,style: TextStyle(
              color: Colors.white,
            ),
            ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),

        body: ListView.builder(
          itemCount: 30,

          itemBuilder: (BuildContext context,int index){
            return Text(
              "Index :$index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            );
          }

        ),
      ),
    );
  }
}
