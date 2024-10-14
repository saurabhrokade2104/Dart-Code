import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:TextfieldDemo(),
    );
  }
}

class TextfieldDemo extends StatefulWidget{
  const TextfieldDemo({super.key});

  @override
  State createState()=>_TextfieldDemo();
}

class _TextfieldDemo extends State{
  TextEditingController nameController =TextEditingController();
  

  String? myName;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Textfield Demo"),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),
      body:Column(
        children:[
          const SizedBox(height:20),
          Padding(
            padding:const EdgeInsets.all(20.0),//leave equal space around textfield
            child:TextField(
              controller:nameController,
              style:const TextStyle(
                fontSize:30,
              ),
              obscureText:true,
              decoration:const InputDecoration(
                suffixIcon:Icon(Icons.visibility),//visibility icon added
                hintText:"Enter Name",
                hintStyle:TextStyle(
                  fontSize:25,
                  color:Colors.grey,
                ),
                border:OutlineInputBorder(), //to give border to textfield


              ),

            ),
          ),
          const SizedBox(height:20),
          GestureDetector(
            onTap:(){
              print("Add Data");
              myName=nameController.text;
              print("My Name:$myName");
              nameController.clear();
              setState((){});
            },
            
            child:Container(



              padding:const EdgeInsets.symmetric(
                horizontal:15,
                vertical:5,
              ),
              decoration:BoxDecoration(
                color:Colors.purple,
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
        const SizedBox(height:40),
        Text(
          "Name:$myName",
          style: const TextStyle(
            fontSize:20,
          )
        )
        ]
      )



    );
  }
}