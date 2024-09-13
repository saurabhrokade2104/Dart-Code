import "dart:io";

void main(){
  print("Enter the no:");
  int n=int.parse(stdin.readLineSync()!);
  int  count=0;
  while(n!=0){
    count++;
    n=n~/10;
  }
  print(count);

}