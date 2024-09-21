import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int sum=0;

    int num2 = num1;

    for(int i=1;i<=num2~/2;i++){
        if(num2 % i == 0){
            sum += i;
        }
    }

    print("Sum :$sum");

    if(sum < num1){
        print("$num1 is Deficient Number.");
    }
    else{
        print("$num1 is not an Deficient Number.");
    }
}
