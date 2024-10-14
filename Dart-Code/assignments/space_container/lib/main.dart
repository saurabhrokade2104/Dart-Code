import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: "Space Containers",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space Parameters"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}