import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    
    int rev=0;

    int temp=num1;
    while(num1>0){
      int  rem = num1 % 10;
        rev = rem + rev*10;

        

    

        num1 = num1 ~/ 10;


    }
    print(rev);

    if (temp==rev){
            print("pallindrome");


    }
    else{
        print("It is not Palindrom number.");
    }
}
