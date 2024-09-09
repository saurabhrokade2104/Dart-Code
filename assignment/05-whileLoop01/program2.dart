import "dart:io";
void main(){
        print("Enter the no of days");
        int day=int.parse(stdin.readLineSync()!);
        while(day>=0){
          if(day==0){
            print("0 days  assignment is overdue");

          }else  {
            print("$day is remaining ");
          }
          day--;
          
        }
}