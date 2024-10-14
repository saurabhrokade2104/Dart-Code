import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container_1",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container_1"),
          centerTitle: true,
          backgroundColor:Colors.pink,
        ),

        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.cyan,
              ),
            ],
          ),
        ),

      ),
    );
  }
}