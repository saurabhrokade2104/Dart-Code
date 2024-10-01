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
      home:CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override
 State createState()=> _CounterAppState();
}

class _CounterAppState extends State{

int count=0;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Counter App",
          style:TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w600,
            color:Colors.black,
          ),      
        ),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),

      body:Center(
          child:Text(
            "$count"
          ),
      ),

      floatingActionButton:  FloatingActionButton(
        onPressed:(){
          count++;
        
        setState((){});
        },
        backgroundColor:Colors.purple,
        child:const Text("Change"),
      ),

    );
  }
}
