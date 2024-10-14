//Question 5
import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              child: Image.network("https://im.rediff.com/cricket/2023/jan/17kohli1.jpg"),
            ),
             Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              child: Image.network("https://im.rediff.com/cricket/2023/jan/17kohli1.jpg"),
            ),
             Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              child: Image.network("https://im.rediff.com/cricket/2023/jan/17kohli1.jpg"),
            ),

          ],
        ) ,
      ),
    );
  }
}
