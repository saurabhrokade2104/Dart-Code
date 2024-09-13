import "dart:io";

void main(){
  print("Enter the no:");
  int n=int.parse(stdin.readLineSync()!);
  int revNum=0;
  while(n>0){
    int digit=n%10;
    revNum=revNum*10+digit;
    n=n~/10;
  }
  print(revNum);
}