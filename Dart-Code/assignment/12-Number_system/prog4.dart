import "dart:io";

void main(){
    print("Enter a Number :");
    int num1 = int.parse(stdin.readLineSync()!);

    int rem = 0;
    int quo = num1;
    int count = 0;
    int strongSum = 0;
    int rem2 = 0;
    int fact = 1;

    while(quo > 0){
        rem = quo % 10;
        quo = quo ~/ 10;
        count++;
    }

    quo = num1;

    while(quo>0){
        fact = 1;
        rem = quo % 10;

        for(int i=1;i<=count;i++){
            fact *= rem;
        }
        strongSum += fact; 
        quo = quo ~/ 10;
    }
    print(count);

    if(strongSum == num1){
        print("$strongSum is an Armstrong Number.");
    }
    else{
        print("$num1 is not Armstrong Number.");
    }
}
