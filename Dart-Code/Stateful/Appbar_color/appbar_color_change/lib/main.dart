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
      home:Appbar(),
    );
  }
}
class Appbar extends StatefulWidget{
  const Appbar({super.key});

  @override
 State createState()=> _AppbarState();
}

class _AppbarState extends State{

  bool changecolor=false;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Change Color",
          style:TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w600,
            color:Colors.black,
          )

        
        
        
        ),
        centerTitle:true,
        backgroundColor:(changecolor)?Colors.purple:Colors.blue,
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

