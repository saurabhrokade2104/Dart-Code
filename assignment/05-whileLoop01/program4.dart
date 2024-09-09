import "dart:io";
void main(){
  print("Enter the no:");
  int n=int.parse(stdin.readLineSync()!);
  int i=1;
  int fact=1;
  while(i<=n){
    fact=fact*i;
    i++;
  }
  print("Factorial $n is $fact");

}