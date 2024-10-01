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
          title:const Text("Column Container"),
          centerTitle:true,
          backgroundColor:Colors.purple,
        ),
        body:Center(
          child:Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,


          children:[Container(
            height:150,
            width:150,
            color:Colors.blue),
            Container(
              height:150,
              width:150,
              color:Colors.orange),
            Container(
              height:150,
              width:150,
              color:Colors.red)]
            ),
        ),
            ),

          );

        
          
        
      
    
  }
}
