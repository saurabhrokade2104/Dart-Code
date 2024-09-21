import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int quo = num1;
    int rem = 0;
    int sum = 0;


    while(quo >0){
        rem = quo % 10;
        sum = sum + rem;
        quo = quo ~/ 10;
    }
    print(sum);
    if(num1 % sum == 0){
        print("$num1 is a Harshad Number.");
    }
    else{
        print("$num1 is not a Harshad Number.");
    }

}
