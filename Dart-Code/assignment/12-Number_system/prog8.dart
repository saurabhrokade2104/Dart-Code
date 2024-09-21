import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int quo = num1;
    int flag = 0;
    int rem = 0;

    while(quo > 0){
        rem = quo % 10;

        if(rem == 0){
            flag = 1;
        }
        quo = quo ~/ 10;
    }

    if(flag == 1){
        print("$num1 is a Duck Number.");
    }
    else{
        print("$num1 is not a Duck Number.");
    }
}
