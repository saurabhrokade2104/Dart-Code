import 'package:flutter/material.dart';


void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
      return MaterialApp(
        home:listview(),

      );
  }
}

class listview extends StatefulWidget{

  const listview({super.key});

  @override
  State createState()=>_Mylistview();
}


class _Mylistview extends State{
  TextEditingController nameController= TextEditingController();
  String? myName;

  List<String> PlayersList=[];


@override
Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title:const Text(
        "Textfeild Listview Demo",
        style:TextStyle(
          fontSize:30,
        ),
      ),
      centerTitle:true,
      backgroundColor:Colors.blue,

    ),
    body:Column(
      children:[
        const SizedBox(
          height:20,
        ),
        Padding(
          padding:const EdgeInsets.all(20.0),
          child:TextField(
            controller:nameController,
            style:const TextStyle(
              fontSize:30,
            ),
            decoration:const InputDecoration(
              hintText:"Enter Name",
              hintStyle:TextStyle(
                fontSize:25,
                color:Colors.grey,
              ),
              border:OutlineInputBorder(),
            ),

          ),
        ),
        const SizedBox(
          height:20,
        ),
        GestureDetector(
          onTap:(){
            print("Add Data");
            myName=nameController.text.trim();
            print("My Name :$myName");
            if(myName!=""){
              PlayersList.add(myName!);
              print("Playerslist length:${PlayersList.length}");
              nameController.clear();
              setState((){});
            }
          },
          child:Container(
            padding:const EdgeInsets.symmetric(
              horizontal:15,
              vertical:5,
            ),
            decoration:BoxDecoration(
              color:Colors.blue,
              borderRadius:BorderRadius.circular(15),
            ),
            child:const Text(
              "Add Data",
              style:TextStyle(
                fontSize:25,
                color:Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height:40,
        ),
        ListView.builder(
          itemCount:PlayersList.length,
          shrinkWrap:true,
          itemBuilder:(context,index){
            return Text(
            "Name: ${PlayersList[index]}",
            style:const TextStyle(
              fontSize:25,
            
            ),
        );
          }

        ),
      ],
    ),


  );
}
    
}