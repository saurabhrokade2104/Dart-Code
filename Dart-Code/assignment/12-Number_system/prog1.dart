import "dart:io";

void main(){
    print("Enter the number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int sum = 0;

    for(int i=1;i<=(num1~/2);i++){

        if(num1 % i == 0){
            sum+=i;
        }
    }

    if(num1 == sum){
        print("$num1 is a Perfect Number.");
    }
    else{
        print("$num1 is Not Perfect Number.");
    }
}
