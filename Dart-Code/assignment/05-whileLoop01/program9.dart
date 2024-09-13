import "dart:io";

void main(){
  print("Enter the no:");
  int n=int.parse(stdin.readLineSync()!);
  int revNum=0;
  int temp=n;
  while(n>0){
    int digit=n%10;
    revNum=revNum*10+digit;
    n=n~/10;
  }
  if(temp==revNum){
    print("The no is pallindrome");

  }
}