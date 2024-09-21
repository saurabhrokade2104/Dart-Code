import "dart:io";


void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int count = 0;
    for(int i=1;i<=num1~/2;i++){

        if(num1 % i == 0){
            count++;
        }
    }

    if(count <= 1){
        print("$num1 is a Prime Number.");
    }
    else{
        print("$num1 is not a prime Number.");
    }
}
