import 'package:flutter/material.dart';

void main(){

  runApp(const Playerapp());
}

class Playerapp extends StatefulWidget{

  const Playerapp({super.key});

  @override
  State createState()=>_Playerappstate();

}

class _Playerappstate extends State{
  int _counter=0;

  List<String>Playerlist=<String>["https://im.rediff.com/cricket/2023/jan/17kohli1.jpg",
  "https://static.toiimg.com/thumb/msid-109138306,width-400,resizemode-4/109138306.jpg",
  "https://static.toiimg.com/thumb/msid-111741230,width-1280,height-720,resizemode-4/111741230.jpg",
  "https://www.hindustantimes.com/ht-img/img/2024/09/25/550x309/CRICKET-IND-BAN-TEST-39_1727243418225_1727243450384.jpg",
  "https://imgeng.jagran.com/images/2023/apr/Sachin11682274529876.jpg"
 ];
  @override
  Widget build(BuildContext Context){

    return MaterialApp(
      debugShowCheckedModeBanner:false,

      home:Scaffold(

        appBar:AppBar(
          title:const Text("Player App"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[
              Image.network(
                Playerlist[_counter],
                height:300,
              ),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if (_counter<Playerlist.length-1){
              _counter++;
            }else{
              _counter=0;
            }
            setState((){}); 
          },
          backgroundColor:Colors.blue,      
          ),
        )
  
          );
        
            

      
    
  }
}