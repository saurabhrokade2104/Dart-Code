import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Row Container"),
          centerTitle:true,
          backgroundColor:Colors.purple,
        ),
        body:Center(
          child:Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,


          children:[Container(
            height:90,
            width:90,
            color:Colors.blue),
            Container(
              height:90,
              width:90,
              color:Colors.orange),
            Container(
              height:90,
              width:90,
              color:Colors.red)]
            ),
        ),
            ),

          );

        
          
        
      
    
  }
}