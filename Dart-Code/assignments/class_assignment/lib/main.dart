import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Todo(),
    );
  }
}

class Todo extends StatefulWidget{
  const Todo({super.key});
  @override
  
  State createState()=>_Todo();
}

class _Todo extends State{
  TextEditingController nameController =TextEditingController();
  TextEditingController companyNameEditingController=TextEditingController();
  List info=[];
  void addinfo(){
    setState(() {
      info.add({"Name":nameController.text,"compName":companyNameEditingController.text}
        
      );
    });
  }
  int count=0;
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar:AppBar(
        title:const Text("Info",
        style:TextStyle(
          fontSize:40,
          
        )),
        centerTitle:true,
        backgroundColor:Color.fromARGB(255, 184, 57, 207),
      ),
      body:Padding
      (
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            const SizedBox(height:25),
            TextField(
              controller: nameController,
              style: TextStyle(
                fontSize:25,
                            ),
              decoration:const InputDecoration(
                hintText: "Name",
                hintStyle:TextStyle(
                  fontSize:25,
                  color:Colors.grey,
                ),
                border:OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.black,
                  )
                ),
              )
            ),
            const SizedBox(height:25),
        
            TextField(
              controller:companyNameEditingController,
              style:TextStyle(
                fontSize:25,
        
              ),
              decoration:const InputDecoration(
                hintText:"Company",
                hintStyle:TextStyle(
                  fontSize:25,
                  color:Colors.grey,
                ),
                border:OutlineInputBorder(
                  borderSide:BorderSide(
                    color:Colors.black)
                ),
              ),
            ),
            const SizedBox(height:10),
            SizedBox(
              width:400,
              child: ElevatedButton(

                onPressed:((){
                  addinfo();
                }),
                child:const Text("Submit",
                style:TextStyle(
                  fontSize:15,
                  color:Colors.black,
                ))
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount:info.length,
                itemBuilder:(context,index)=> 
                 Container(
                  
                  decoration:const BoxDecoration(
                    color:Color.fromARGB(255, 188, 67, 210),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                    
                    Text("Name:"'${info[index]["Name"]}',
                    style:const TextStyle(
                      fontSize: 20,
                      fontStyle:FontStyle.normal
                    )),
                    const SizedBox(height:20),
                     Text("Company:"'${info[index]["compName"]}',
                     style:TextStyle(
                      fontSize:20,
                     )),
                   ]
                
                  )
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}