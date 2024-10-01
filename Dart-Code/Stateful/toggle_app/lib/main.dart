import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      
      debugShowCheckedModeBanner:false,
      home:ToggleApp(),
    );
  }
}
class ToggleApp extends StatefulWidget{
  const ToggleApp({super.key});

  @override
 State createState()=> _ToggleAppState();
}

class _ToggleAppState extends State{

  bool changecolor=false;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Toggle container",
          style:TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w600,
            color:Colors.black,
          )

        
        
        
        ),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),

      body:Center(
          child:Container(
            height:250,
            width:250,
            color:(changecolor) ? Colors.blue:
            Colors.red,
        
        
          ),
      ),

      floatingActionButton:  FloatingActionButton(
        onPressed:(){
          if (changecolor){
            changecolor=false;
          }else{
            changecolor=true;
          }
          setState((){});
        },
        backgroundColor:Colors.purple,
        child:const Text("Change"),
      ),

    );
  }
}
