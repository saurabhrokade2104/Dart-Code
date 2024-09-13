import "dart:io";

void main(){

    print("Enter Number of Rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1=0;
    int num2=1;


    for(int i=1;i<=rows;i++){

       
        num1=num2;

        for(int j=1;j<=rows;j++){

            stdout.write("$num1 ");
            num1 = num1 + 2;

        }
        print("");
        num2=num2+2;
        num1 = num2;
    }

}


