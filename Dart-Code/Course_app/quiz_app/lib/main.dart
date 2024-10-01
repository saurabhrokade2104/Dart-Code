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
      home:QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions=[
    {
    "questions":"  Who is prime minister of India?",
    "options":["Sachin Tendulkar","Bill Gates","Narendra Modi","Amit Shah"],
    "correctAnswer":2
    },
    {
    "questions":"  Who is prime minister of Russia?",
    "options":["Bill Gates","Vlamdir Putin","Elon Musk","Benjamin N"],
    "correctAnswer":1
    },
    {
      "questions":"  Who is founder of Google?",
    "options":["Sachin Tendulkar","Bill Gates","Narendra Modi","Lary page"],
    "correctAnswer":3
    },
    {
      "questions":"  Who is founder of Micosoft?",
    "options":["Sachin Tendulkar","Bill Gates","Narendra Modi","Elon Musk"],
    "correctAnswer":1
    },
    {
      "questions":"  Who is founder of Tesla?",
    "options":["Lary Page","Bill Gates","Stew jobs","Elon Musk"],
    "correctAnswer":3
    },
  ];

  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;
  int mark=0;

  WidgetStateProperty<Color?> checkAnswer( int answerIndex){
    
    if(selectedAnswerIndex!=-1){

      if(answerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){

        if(selectedAnswerIndex==answerIndex){
          mark++;
        }
        return const WidgetStatePropertyAll(Colors.green);
      

      }else if(selectedAnswerIndex==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(Colors.white);
      }
    }else{
      return const WidgetStatePropertyAll(Colors.white);
    }

  }
  bool questionPage=true;

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();

  }Scaffold isQuestionScreen(){
    if (questionPage==true){
    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "QuizApp",
          style:TextStyle(
            fontSize:30,
            fontWeight: FontWeight.w900,
            color:Colors.black,

          ),
        ),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),
      body: Column(
        children:[
          const SizedBox(
            height:30
          ),

          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              const SizedBox(
                width:25,
              ),
              Text(
                "Question:${currentQuestionIndex+1}/${allQuestions.length}",
                style:const TextStyle(
                  fontSize:28,
                  fontWeight:FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
            
            width:390,
            height:50,
            child:Text(
              allQuestions[currentQuestionIndex]["questions"],
              style:const TextStyle(
                fontSize:25,
                fontWeight:FontWeight.w600,
                color:Color.fromARGB(255, 67, 7, 127),
              ),
            ),
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(0),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=0;
                  setState((){});
                }
              },
              child:Text(
                "A.${allQuestions[currentQuestionIndex]['options'][0]}",
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:25,
          ),
         
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(1),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=1;
                  setState((){});
                }
              },
              child:Text(
                "B.${allQuestions[currentQuestionIndex]['options'][1]}",
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
                ),
              ),
            ),
          ),

          const SizedBox(
            height:25,
          ),
           SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(2),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=2;
                  setState((){});
                }
              },
              child:Text(
                "C.${allQuestions[currentQuestionIndex]['options'][2]}",
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
                ),
              ),
            ),
          ),
          

          const SizedBox(
            height:25,
          ),
           SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(3),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=3;
                  setState((){});
                }
              },
              child:Text(
                "D.${allQuestions[currentQuestionIndex]['options'][3]}",
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
                ),
              ),
            ),
          ),
          
          
          
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          if(selectedAnswerIndex!=-1){

            if(currentQuestionIndex<allQuestions.length-1){
              currentQuestionIndex++;
            }else{
              questionPage=false;
            }
            selectedAnswerIndex=-1;
            
            setState((){});
          }
        },
        backgroundColor:Colors.purple,
        child:const Icon(
          Icons.forward,
          color:Colors.black,
        ),
      ),
    );

  } else {
    return Scaffold(
      appBar:AppBar(
        title:const  Text(
          "Quiz Result",
          style: TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w900,
            color:Colors.white,
          ),
        ),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3j_rof2cAFrHrB_K82OQmg3PD3qDFSYQNrQ&s" ,
              height:300,
            ),
            const SizedBox(height:30),
            const Text(
              "Congratulations",
              style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w900,
                color:Colors.orange,
              ),
            ),
            const SizedBox(height:30),
             Text("Score: $mark/${allQuestions.length}"),

             const SizedBox(height:30),

             Column(children: [
                ElevatedButton(
                  onPressed:(){
                  mark=0;
                  selectedAnswerIndex=-1;
                  currentQuestionIndex=0;
                  questionPage=true;
                  setState((){});
                  
                  },

                  child:const Text(
                    "Reset",
                  style:TextStyle(
                    fontSize:20,
                    color:Colors.purple,
                  )
                  
                  ),
                )

             ],)
             
            
          ],
          
        ),
        
      ),
    );
  }

  }
}