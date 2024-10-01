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
          title:const Text("INDIA FLAG"),
          centerTitle:true,
          backgroundColor:Colors.purple,
        ),
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
          children:[Container(
            height:60,
            width:250,
            color:Colors.orange),
            Container(
              height:60,
              width:250,
              color:Colors.white,
              child:Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png")
            ),
            Container(
              height:60,
              width:250,
              color:Colors.green)]
            ),
        ),
            ),

          );

        
          
        
      
    
  }
}
