import "dart:io";
void main(){
  print("Enter the no");
  int n=int.parse(stdin.readLineSync()!);
  while(n>0){
    int digit=n%10;
    if(digit%2==0){
      print(digit*digit);
    }
    n=n~/10;
  }
}