import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int quo = num1;
    int factSum = 0;
    int rem = 0;
    int fact=1;

    while(quo > 0){
        fact = 1;
        rem = quo % 10;

        for(int i=1;i<=rem;i++){
            fact *= i;
        }

        factSum += fact;
         quo = quo ~/ 10;
    }

    if(factSum == num1){
        print("$factSum is a Strong Number.");
    }
    else{
        print("$num1 is not a Strong Number.");
    }
}
