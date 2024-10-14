import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Static Listview"),
          centerTitle: true,
          backgroundColor:Colors.purple,
        ),

        body: ListView(
          children: [
          
              Image.network(
                "https://in.bmscdn.com/iedb/artist/images/website/poster/large/ajay-atul-9158-1676544753.jpg"
              ),
            
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),

            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                
              ),
            ),

            Image.network("https://in.bmscdn.com/iedb/artist/images/website/poster/large/ajay-atul-9158-1676544753.jpg"),
            GestureDetector(
              onTap: (){
                print("Button Pressed");

              },

              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 137, 173, 185),
                child: const Text(
                  "Press me",
                  
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 247, 87, 196),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
